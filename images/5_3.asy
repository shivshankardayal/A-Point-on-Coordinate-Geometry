settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(4cm);

draw(circle((1cm, 1cm), 1.414cm));
label("$C(\alpha, \beta)$", (1cm, 1cm), NE);
dot((1cm, 1cm));
label("$O(0, 0)$", origin, SW);
draw(origin -- (3cm, 0), Arrow);
draw(origin -- (0, 3cm), Arrow);
