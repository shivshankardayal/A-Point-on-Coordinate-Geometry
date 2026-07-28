settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(4cm);

defaultpen(linewidth(0.5pt));

draw((0,0)--(5,0));
draw((0,-2)--(0,2));
draw((0,1)--(2,1));
draw((2,1)--(5,0));

label("$P$", (2,1), NE);
label("$S$", (5,0), SW);
label("$M'$", (0,-2), S);
label("$M$", (0,2), N);
label("$N$", (0,1), W);
label("$H$", (0,0), W);
