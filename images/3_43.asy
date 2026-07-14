settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
size(150);
defaultpen(linewidth(.5bp));

draw(origin -- (3, 0), Arrow);
draw(origin -- (0, 4), Arrow);
draw((0, 3) -- (1.5*sqrt(3)/(sqrt(3) + 1), -1.5*sqrt(3)/(sqrt(3) + 1) + 3));
draw((0, 1.5) -- (1.5*sqrt(3)/(sqrt(3) + 1), -1.5*sqrt(3)/(sqrt(3) + 1) + 3));
draw((0, 1) -- (2/(1 + sqrt(3)), -2/(1 + sqrt(3)) + 3));
label("$x$", (3, 0), E);
label("$y$", (0, 4), N);
label("$R$", (-0.1, 3), W);
label("$Q$", (-0.1, 1.5), W);
label("$P$", (-0.1, 1), W);
label("$A$", (1.5*sqrt(3)/(sqrt(3) + 1), -1.5*sqrt(3)/(sqrt(3) + 1) + 3), E);
label("$C$", (sqrt(3)/4, 7/4 - 0.1), S);
