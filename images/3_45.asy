settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
size(150);
defaultpen(linewidth(.5bp));

draw((0, 0) -- (4, 0), Arrows);
draw((2, 2) -- (2, -2));
label("$ax + by + c = 0$", (3.5, -0.2), S);
label("$P(x_1, y_1)$", (2, 2), N);
label("$Q(x_2, y_2)$", (2, -2), S);
label("$A$", origin, W);
label("$B$", (4, 0), E);
fill(circle((2, 2), .04), black);
fill(circle((2, -2), .04), black);
label("$L$", (1.95, -0.05), SW);
