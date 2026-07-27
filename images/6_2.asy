settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(4cm);

defaultpen(linewidth(0.5pt));

draw((0,-1)--(0,1));
draw((0,0)--(1.5,0));
draw((1.5,0)--(1,-1.5));

label("$Q$", (0,-1), S);
label("$N$", (0,0), W);
label("$P(x,y)$", (1.5,0), NE);
label("$S(\alpha,\beta)$", (1,-1.5), S);
