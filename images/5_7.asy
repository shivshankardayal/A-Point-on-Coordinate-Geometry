settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(6cm);

draw(circle(origin, 2cm));
draw((2cm, 0) -- (-2cm, 0));
draw((-2cm, 0) -- (1cm, 1.732cm) -- (2cm, 0));
dot(origin);
label("$C$", origin, S);
label("$A(x_1, y_1)$", (-2cm, 0), W);
label("$B(x_2, y_2)$", (2cm, 0), E);
label("$P(x, y)$", (1cm, 1.732cm), NE);
markrightangle((-2cm, 0), (1cm, 1.732cm), (2cm, 0));
