settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

real a = 3, b = 2;
real ca = 1/sqrt(5), sa = 2/sqrt(5);   // cos(alpha), sin(alpha) for the chosen alpha

pair O = (0,0);
pair P = (a*ca, b*sa);        // point on the ellipse at eccentric angle alpha
pair Q = (a*ca, a*sa);        // corresponding point on the auxiliary circle

// tangent line meets the circle at A, B
pair A = (-0.6*sqrt(5), 1.2*sqrt(5));
pair B = ( 1.2*sqrt(5), 0.6*sqrt(5));

// axes
draw((-4,0)--(4,0), gray+0.5);
draw((0,-3.5)--(0,3.5), gray+0.5);

// auxiliary circle and ellipse
draw(circle(O, a), blue);
draw(ellipse(O, a, b), heavygreen);

// tangent line through P, extended to A and B
draw(A--B, red);

// radii to the intersection points
draw(O--A);
draw(O--B);

// eccentric angle construction (dashed)
draw(Q--P, dashed);
draw(O--Q, dashed);

// right-angle mark at O between OA and OB
pair u1 = unit(A-O), u2 = unit(B-O);
real s = 0.35;
draw(O+u1*s -- O+u1*s+u2*s -- O+u2*s);

// points
dot("$O$", O, S);
dot("$P(\alpha)$", P, E);
dot("$Q$", Q, NE);
dot("$A$", A, NW);
dot("$B$", B, NE);

// labels
label("$a$", (a/2, -0.25), S);
label("$b$", (-0.25, b/2), W);
label(rotate(0)*"$\alpha$", O+ (0.6,0.25));
