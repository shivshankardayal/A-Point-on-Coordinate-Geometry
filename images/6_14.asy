settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(4cm);

defaultpen(linewidth(0.5pt));

draw((0,0)--(7,0), black, Arrow);
draw((0,-2)--(0,2));
draw((0,1)--(5,1));
draw((5,1)--(4,0));

label("$P$", (5,1), NE);
label("$S$", (4,0), SW);
label("$M'$", (0,-2), S);
label("$M$", (0,2), N);
label("$N$", (0,1), W);
label("$H$", (0,0), W);
label("$O$", (4.5,0), S);
label("$A'$", (6,0), S);
label("$A$", (3,0), S);
label("$X$", (7,0), E);
label("$Y$", (4.5,2), N);

draw((4.5,0)--(4.5,2), black, Arrow);
