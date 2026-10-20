#!/usr/bin/perl
# Sorteert de carrousels uit een Instagram-export in submappen met genummerde slides.
#
# Gebruik:
#   perl sorteer-instagram-export.pl <exportmap> <doelmap> [--doe]
#
# Zonder --doe: proefrun, laat zien wat er zou gebeuren. Met --doe: kopieert.
# Leest your_instagram_activity/media/posts_1.html, posts_2.html, enzovoort. Niet posts.html:
# dat is een andere lijst met per post een extra miniatuur.
# Per post met twee of meer beelden: <doelmap>/<jjjj-mm-dd>-<eerste woorden>/slide-01.jpg ...
# Posts met één beeld worden overgeslagen (losse foto's horen niet in het design system).
# Bestaande mappen worden nooit overschreven.
use strict; use warnings; use utf8;
use File::Copy qw(copy);
use File::Path qw(make_path);
binmode STDOUT, ':encoding(UTF-8)';

my ($export, $doel, $vlag) = @ARGV;
die "gebruik: perl $0 <exportmap> <doelmap> [--doe]\n" unless $export && $doel;
my $doe = ($vlag // '') eq '--doe';

my %maand = (jan=>'01',feb=>'02',mar=>'03',mrt=>'03',apr=>'04',may=>'05',mei=>'05',jun=>'06',
             jul=>'07',aug=>'08',sep=>'09',oct=>'10',okt=>'10',nov=>'11',dec=>'12');

sub lees { my $p = shift; open my $h, '<:encoding(UTF-8)', $p or return ''; local $/; my $t = <$h>; close $h; $t }

my @posts; my %gezien;
for my $pad (sort glob("$export/your_instagram_activity/media/posts_[0-9]*.html")) {
    my ($bestand) = $pad =~ m{([^/]+)$};
    my $html = lees($pad) or next;
    $html =~ s/></>\n</g;
    my @blokken = split /(?=<h2 class="_3-95 _2pim _a6-h _a6-i">)/, $html;
    for my $b (@blokken) {
        next unless $b =~ /^<h2 class="_3-95 _2pim _a6-h _a6-i">(.*?)<\/h2>/s;
        my $caption = $1; $caption =~ s/<[^>]+>//g; $caption =~ s/&#039;/'/g; $caption =~ s/&amp;/&/g; $caption =~ s/\s+/ /g;
        my @media; my %in;
        while ($b =~ /href="(media\/posts\/[^"]+\.(?:jpg|jpeg|png|webp))"/gi) { push @media, $1 unless $in{$1}++; }
        my ($datum) = $b =~ /_a6-o">([a-z]{3} \d{1,2}, \d{4})/i;
        my $iso = 'zonder-datum';
        if ($datum && $datum =~ /^([a-z]{3}) (\d{1,2}), (\d{4})$/i) {
            my $m = $maand{lc $1} // '00'; $iso = sprintf('%s-%s-%02d', $3, $m, $2);
        }
        my $sleutel = join('|', @media);
        next if !@media || $gezien{$sleutel}++;
        push @posts, { caption => $caption, media => \@media, datum => $iso, bron => $bestand };
    }
}

@posts = sort { $b->{datum} cmp $a->{datum} } @posts;

sub slug {
    my $s = lc shift;
    $s =~ s/[^\p{L}\p{N}\s]//g;
    my @w = grep { length } split /\s+/, $s;
    @w = @w[0..4] if @w > 5;
    $s = join('-', @w);
    $s =~ tr/àáâäèéêëìíîïòóôöùúûüç/aaaaeeeeiiiioooouuuuc/;
    return $s || 'post';
}

my ($carr, $los, $gekopieerd) = (0, 0, 0);
print $doe ? "KOPIËREN\n" : "PROEFRUN (niets gekopieerd; voeg --doe toe om te kopiëren)\n";
print "-" x 70, "\n";
for my $p (@posts) {
    my $n = scalar @{$p->{media}};
    if ($n < 2) { $los++; printf "  overslaan (1 beeld)  %s  %s\n", $p->{datum}, substr($p->{caption}, 0, 50); next; }
    $carr++;
    my $map = "$doel/$p->{datum}-" . slug($p->{caption});
    printf "  %-2d slides  %s\n", $n, $map;
    if (-d $map) { print "     bestaat al, overgeslagen\n"; next; }
    next unless $doe;
    make_path($map);
    my $i = 0;
    for my $m (@{$p->{media}}) {
        $i++; my ($ext) = $m =~ /\.(\w+)$/;
        my $van = "$export/$m"; my $naar = sprintf('%s/slide-%02d.%s', $map, $i, lc $ext);
        if (-f $van) { copy($van, $naar) or warn "kopie mislukt: $van\n"; $gekopieerd++; }
        else { warn "ontbreekt in export: $van\n"; }
    }
}
print "-" x 70, "\n";
printf "%d carrousels, %d losse posts overgeslagen%s\n", $carr, $los, $doe ? ", $gekopieerd slides gekopieerd" : '';
