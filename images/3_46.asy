settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
size(150);
defaultpen(linewidth(.5bp));

draw((-2, 0) -- (2, 0), Arrows);
draw((-2, -2) -- origin);
draw(origin -- (2, -2));
draw(origin -- (0, -2));
label("$A$", origin, N);
label("$P$", (-2, -2), SW);
label("$Q$", (2, -2), SE);
label("$3x - 2y - 5 = 0$", (1.5, 0), N);

path line1 = (-2, -2) -- (0, 0);
real angle = degrees(dir(line1));
label(rotate(angle) * Label("$x - 2y - 3 = 0$", position=MidPoint - (.2, .2)), line1);
markangle("$\alpha$", radius=3mm, (-2, 0), origin, (-2, -2));
markangle("$\theta$", radius=4mm, (-2, -2), origin, (0, -2));
markangle("$\theta$", radius=4mm, (0, -2), origin, (2, -2));
markangle("$\alpha$", radius=3mm, (2, -2), origin, (2, 0));

label("$L$", (-2, 0), W);
label("$M$", (2, 0), E);
