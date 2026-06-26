settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(6cm);
unitsize(1cm);

draw(circle(origin, 1));
dot(origin);
draw((0.2, 0.99) -- (0.2, -0.99));
draw((0, 0) -- (0.2, 0));
label("$Q$", (0.2, 0.99), N);
label("$P$", (0.2, -0.99), N);
label("$C(0, 0)$", origin, W);
label("$L$", (0.2, 0), E);
