settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(4cm);

draw(circle((1cm, 2cm), 1cm));
label("$C(\alpha, \beta)$", (1cm, 2cm), NE);
dot((1cm, 2cm));
label("$O$", origin, SW);
draw(origin -- (3cm, 0), Arrow);
draw(origin -- (0, 3cm), Arrow);
draw((1cm, 2cm) -- (0, 2cm), dashed);
label("$L$", (0, 2cm), W);
