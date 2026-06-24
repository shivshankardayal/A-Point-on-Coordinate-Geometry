settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(4cm);

draw(circle(origin, 2cm));
label("$O(0, 0)$", origin, SW);
draw(origin -- (1.414cm, 1.414cm));
dot(origin);
label("$P(x, y)$", (1.414cm, 1.414cm), NE);
draw(origin -- (3cm, 0), Arrow);
draw(origin -- (0, 3cm), Arrow);
