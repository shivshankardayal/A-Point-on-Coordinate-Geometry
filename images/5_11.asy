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
label("$C(0, 0)$", origin, S);
label("$P(x_1, y_1)$", (5, 0), E);
label("$A$", (0.2, 0.99), N);
label("$B$", (0.2, -0.99), S);
