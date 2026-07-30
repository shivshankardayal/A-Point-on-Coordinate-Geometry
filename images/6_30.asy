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

real xR(real t) { return a*cosh(t); }
real yR(real t) { return b*sinh(t); }
real xL(real t) { return -a*cosh(t); }
real yL(real t) { return b*sinh(t); }

path rightBranch = graph(xR, yR, -1.3, 1.3);
path leftBranch  = graph(xL, yL, -1.3, 1.3);

draw(rightBranch, black);
draw(leftBranch,  black);

// Axes
draw((-4.5,0)--(4.5,0), black, Arrow);
draw((0,-3)--(0,3), black, Arrow);
label("$x$", (4.5,0), E);
label("$y$", (0,3), N);

// Foci
pair F1 = (c,0);
pair F2 = (-c,0);
dot(F1, black);
dot(F2, black);
label("$S$", F1, S);
label("$S'$", F2, S);

// Vertices (transverse axis endpoints)
pair A1 = (a,0);
pair A2 = (-a,0);
dot(A1, black);
dot(A2, black);
label("$A_1$", A1, N);
label("$A_2$", A2, N);

// Mark the transverse axis explicitly
draw(A2--A1, black);

// Point P on the right branch
real t0 = 0.9;
pair P = (xR(t0), yR(t0));
dot(P, black);
label("$P$", P, NE);

// Focal radii
draw(P--F1, black);
draw(P--F2, black);
pair M = (P.x, 0);

draw(P -- M, dashed);
label("$M$", M, S);

real d = a^2/c;
draw((d,-3)--(d,3), black+dashed);
draw((-d,-3)--(-d,3), black+dashed);

label("$C$", origin, SW);
label("$N$", (d, 3), N);
label("$Q$", (d, 0), SW);
label("$N'$", (-d, 3), N);
label("$Q'$", (-d, 0), SE);
