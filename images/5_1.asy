settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(4cm);

draw(circle(origin, 2cm));
label("$C(h, k)$", origin, SW);
draw(origin -- (1.414cm, 1.414cm));
dot(origin);
label("$P(x, y)$", (1.414cm, 1.414cm), NE);
