settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

defaultpen(linewidth(0.5pt));

// --- Ellipse parameters ---
real a = 4, b = 2;
path ell = ellipse((0,0), a, b);

// --- Conjugate diameters via parametric angle ---
// P = (a cos(theta), b sin(theta))
// Q = (a cos(theta+90), b sin(theta+90)) = (-a sin(theta), b cos(theta))
// These two diameters (PP' and QQ') are conjugate for ANY theta.
real theta = 35;   // degrees, choose any angle

pair P  = (a*Cos(theta), b*Sin(theta));
pair Pp = -P;                              // P'
pair Q  = (-a*Sin(theta), b*Cos(theta));
pair Qp = -Q;                              // Q'

// --- Draw ellipse and diameters ---
draw(ell, black);
draw(P--Pp, blue);
draw(Q--Qp, red);

dot(P); dot(Pp); dot(Q); dot(Qp);
dot((0,0));

label("$P$", P, dir(theta));
label("$P'$", Pp, dir(theta+180));
label("$Q$", Q, dir(theta+90));
label("$Q'$", Qp, dir(theta-90));
label("$O$", (0,0), SE);

// axes for reference
draw((-a-1,0)--(a+1,0), gray+0.5bp, Arrow);
draw((0,-b-1)--(0,b+1), gray+0.5bp, Arrow);
