settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(6cm);
unitsize(1cm);

draw(circle(origin, 1));
dot(origin);
draw((5, 0) -- (-0.5, 1.13));
draw((5, 0) -- (-0.5, -1.13));
draw((0.2, .99) -- (0.2, -.99));
dot((.2, .1));
label("$C(0, 0)$", origin, SW);
label("$T(\alpha, \beta)$", (5, 0), E);
label("$Q$", (0.2, 0.99), N);
label("$R$", (0.2, -0.99), S);
label("$P(x_1, y_1)$", (0.2, 0.1), E);
