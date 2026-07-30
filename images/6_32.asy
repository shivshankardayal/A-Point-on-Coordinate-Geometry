settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

defaultpen(linewidth(0.5pt));

real a = 1;

// Rectangular hyperbola x^2 - y^2 = a^2, right and left branches
real f(real y) { return sqrt(a^2 + y^2); }

real ymax = 3;
path right = graph(f, -ymax, ymax, n=200);
path left  = reflect((0,0),(0,1))*right;

draw(right, black+1bp);
draw(left,  black+1bp);

// Asymptotes y = x and y = -x
draw((-4,-4)--(4,4), black+dashed);
draw((-4,4)--(4,-4), black+dashed);

// Axes
draw((-4,0)--(4,0), black, Arrow);
draw((0,-4)--(0,4), black, Arrow);

// Vertices
dot((a,0)); dot((-a,0));
label("$(a,0)$", (a,0), SE);
label("$(-a,0)$", (-a,0), SW);

label("$x$", (4,0), E);
label("$y$", (0,4), N);
