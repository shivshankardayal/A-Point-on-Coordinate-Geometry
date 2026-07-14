settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
size(150);
defaultpen(linewidth(.5bp));

draw((-3, 0) -- (3, 0), Arrows);
draw((-2, -2) -- origin, dashed);
draw(origin -- (2, 2));
draw((0, 2) -- (0, -2), dashed);
draw((-1.3, -2) -- origin);
label("$P$", (2, 2), N);
label("$R$", (-1.3, -2.4), N);
label("$L$", (0, 2.1), N);
label("$M$", (0, -2.1), S);
label("$Q$", (0, 0), SE);
label("$S$", (-2, -2), SW);
label("$x + y = 1$", (1.5, 0), N);
markangle("$\theta$", radius=3mm, (-3, 0), origin, (-2, -2));
markangle("$\alpha$", radius=8mm, (-3, 0), origin, (-1.3, -2));
label("$A$", (-3, -0), W);
label("$B$", (3, -0), E);
path line1 = origin -- (2, 2);
real angle = degrees(dir(line1));
label(rotate(angle) * Label("$2x - 3y = 5$", position=MidPoint + (0.2, 0.2)), line1);
