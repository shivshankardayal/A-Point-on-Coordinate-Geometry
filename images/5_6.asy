settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(4cm);

draw(circle((1cm, 1cm), 1cm));
label("$C(\alpha, \beta)$", (1cm, 1cm), NE);
dot((1cm, 1cm));
label("$O$", origin, SW);
draw(origin -- (3cm, 0), Arrow);
draw(origin -- (0, 3cm), Arrow);
draw((1cm, 1cm) -- (0, 1cm), dashed);
draw((1cm, 1cm) -- (1cm, 0), dashed);
label("$L$", (0, 1cm), W);
label("$M$", (1cm, 0), S);
