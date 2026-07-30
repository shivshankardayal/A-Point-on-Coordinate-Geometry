settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

defaultpen(linewidth(0.5pt));

real a = 2;
real b = 1.5;
real c = sqrt(a^2 + b^2);   // foci of original hyperbola: (+-c, 0)
real cc = sqrt(a^2 + b^2);  // foci of conjugate hyperbola: (0, +-cc)  [same value since a,b swap roles under sqrt]

// Original hyperbola: x^2/a^2 - y^2/b^2 = 1
real xR(real t) { return a*cosh(t); }
real yR(real t) { return b*sinh(t); }
real xL(real t) { return -a*cosh(t); }
real yL(real t) { return b*sinh(t); }

// Conjugate hyperbola: y^2/b^2 - x^2/a^2 = 1
real xU(real t) { return a*sinh(t); }
real yU(real t) { return b*cosh(t); }
real xD(real t) { return a*sinh(t); }
real yD(real t) { return -b*cosh(t); }

path origRight = graph(xR, yR, -1.3, 1.3);
path origLeft  = graph(xL, yL, -1.3, 1.3);
path conjUp    = graph(xU, yU, -1.5, 1.5);
path conjDown  = graph(xD, yD, -1.5, 1.5);

//draw(origRight, black+1);
//draw(origLeft,  black+1);
draw(conjUp);
draw(conjDown);

// Shared asymptotes y = (b/a) x  and y = -(b/a) x
draw((-4,-4*b/a)--(4,4*b/a), gray+0.7);
draw((-4,4*b/a)--(4,-4*b/a), gray+0.7);

// Axes
draw((-4.5,0)--(4.5,0), black, Arrow);
draw((0,-4.2)--(0,4.2), black, Arrow);
label("$x$", (4.5,0), E);
label("$y$", (0,4.2), N);


// Vertices of conjugate hyperbola
dot((0,b), black);
dot((0,-b), black);
label("$(0,b)$", (0,b), NW);
label("$(0,-b)$", (0,-b), SW);


dot((0,cc), black);
dot((0,-cc), black);
label("$F_1$", (0,cc), E);
label("$F_2$", (0,-cc), E);
