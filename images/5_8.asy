settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(4cm);
unitsize(1cm);
circle c = circle(origin, 2);
draw(arc(c, 0, 150));
draw((2, -1) -- (2, 1));
draw((2, 0) -- origin, dashed);
draw((2, 0) -- (1.414, 1.414));
draw((2, 0) -- (1, 1.732));
draw((2, 0) -- (0, 2));

label("$N$", origin, W);
label("$P$", (2, 0), E);
label("$Q$", (1.414, 1.414), NE);
label("$Q_1$", (1, 1.732), N);
label("$Q_2$", (0, 2), N);
