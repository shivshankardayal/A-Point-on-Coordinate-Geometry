settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

defaultpen(linewidth(0.5pt));

real a = 2;
real b = 1.5;
real c = sqrt(a^2 + b^2);

// Right branch: x = a*cosh(t), y = b*sinh(t)
real xR(real t) { return a*cosh(t); }
real yR(real t) { return b*sinh(t); }

// Left branch
real xL(real t) { return -a*cosh(t); }
real yL(real t) { return b*sinh(t); }

path rightBranch = graph(xR, yR, -1.4, 1.4);
path leftBranch  = graph(xL, yL, -1.4, 1.4);

draw(rightBranch, black);
draw(leftBranch,  black);

// Asymptotes y = (b/a) x  and y = -(b/a) x
draw((-4,-4*b/a)--(4,4*b/a), black+dashed);
draw((-4,4*b/a)--(4,-4*b/a), black+dashed);

// Axes
draw((-4.5,0)--(4.5,0), black, Arrow);
draw((0,-3.5)--(0,3.5), black, Arrow);
label("$x$", (4.5,0), E);
label("$y$", (0,3.5), N);

// Vertices
dot((a,0), black);
dot((-a,0), black);
label("$(a,0)$", (a,0), SE);
label("$(-a,0)$", (-a,0), SW);

// Foci
dot((c,0), black);
dot((-c,0), black);
label("$F_1$", (c,0), N);
label("$F_2$", (-c,0), N);

// Conjugate axis (endpoints B1, B2 on the y-axis)
draw((0,-b)--(0,b), black);
dot((0,b), black);
dot((0,-b), black);
label("$B_1$", (0,b), E);
label("$B_2$", (0,-b), E);

// Latus rectum through each focus: vertical chords of length 2b^2/a
real l = b^2/a;
draw((c,-l)--(c,l), black);
draw((-c,-l)--(-c,l), black);
dot((c,l), black);
dot((c,-l), black);
dot((-c,l), black);
dot((-c,-l), black);
label("$L_1$", (c,l), NE);
label("$L_1'$", (c,-l), SE);
label("$L_2$", (-c,l), NW);
label("$L_2'$", (-c,-l), SW);
