settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
size(150);
defaultpen(linewidth(.5bp));

draw((-3, 0) -- (3, 0), Arrows);
draw((-2, -2) -- origin);
draw(origin -- (2, -2));
draw(origin -- (0, -2));
label("$R$", origin, N);
label("$P(-3, 4)$", (-2, -2), SW);
label("$Q(0, 1)$", (2, -2), SE);
label("$2x + y = 7$", (1.5, 0), N);
markangle("$\alpha$", radius=3mm, (-2, 0), origin, (-2, -2));
markangle("$\theta$", radius=4mm, (-2, -2), origin, (0, -2));
markangle("$\theta$", radius=4mm, (0, -2), origin, (2, -2));
markangle("$\alpha$", radius=3mm, (2, -2), origin, (2, 0));
label("$L$", (-3, 0), W);
label("$M$", (3, 0), E);
draw(origin --(-2, 2), dashed);
draw((-2, -2) -- (-2, 2), dashed);
label("$S$", (-2, 2), N);
label("$H$", (-2, 0.1), W);
