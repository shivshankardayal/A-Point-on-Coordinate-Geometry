settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

defaultpen(linewidth(0.5pt));

draw((0,0)--(6,0), Arrow);
draw((0,-2)--(0,3));
draw((0,1)--(2,1));
draw((2,1)--(5,0));

label("$P(\alpha, \beta)$", (2,1), NE);
label("$S(ae, 0)$", (5,0), SE);
label("$M'$", (0,-2), S);
label("$M$", (0,2), NW);
label("$N$", (0,1), W);
label("$H$", (0,0), W);

label("$x$", (6, 0), E);

draw((2, 0.2) -- (2, -0.2));
label("$A$", (2, 0), S);
draw((-2, 0.2) -- (-2, -0.2));
label("$A'$", (-2, 0), S);

draw((-1, 0) -- (-1, 3), Arrow);
label("$y$", (-1, 3), N);

draw((-2, 0) -- origin);
label("$ex - a = 0$", (0,2.5), E);
