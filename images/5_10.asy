settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(6cm);
unitsize(1cm);

draw(circle(origin, 1));
dot(origin);
draw((5, 0) -- (-0.5, 1.13));
draw((5, 0) -- (0, 0));
draw((0, 0) -- (.2, .99));
label("$C(0, 0)$", origin, S);
label("$T$", (0.2, 0.99), N);
markrightangle(origin, (.2, .99), (5, 0));
label("$P(x_1, y_1)$", (5, 0), E);
