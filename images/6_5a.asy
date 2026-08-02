settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

real f1(real x){return sqrt(4*(x+1));}
real f2(real x){return -sqrt(4*(x+1));}
real g1(real x){return sqrt(12*(3-x));}
real g2(real x){return -sqrt(12*(3-x));}

// Draw the two parabolic arcs (upper and lower halves)
draw(graph(f1,-1,2));
draw(graph(f2,-1,2));
draw(graph(g1,2,3));
draw(graph(g2,2,3));

// Axes
draw((-3,0)--(5,0), Arrow);
draw((0,-4.5)--(0,4.5), Arrow);
label("$x$", (5,0), E);
label("$y$", (0,4.5), N);

// The line x = 2
draw((2,-4.2)--(2,4.2), dashed+red);
label("$x=2$", (2,-4.4), S, red);

// Key points
dot("$(-1,0)$", (-1,0), S);
dot("$(3,0)$", (3,0), S);
dot("$(2,2\sqrt3)$", (2,2*sqrt(3)), NE);
dot("$(2,-2\sqrt3)$", (2,-2*sqrt(3)), SE);
dot("$O$", (0,0), SW);
