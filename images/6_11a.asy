settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;
import markers;

size(6cm);


real a = 3, b = 2;
real c = sqrt(a^2-b^2);

pair F1 = (-c,0), F2 = (c,0);

real t0 = radians(55);
pair P = (a*cos(t0), b*sin(t0));

// tangent direction at P: (-a sin t0, b cos t0)
pair tdir = unit((-a*sin(t0), b*cos(t0)));
pair ndir = unit((b*cos(t0), a*sin(t0))); // normal direction (perp to tangent)

pair Ttip1 = P + 3.2*tdir;
pair Ttip2 = P - 3.2*tdir;
pair Ntip1 = P + 1.8*ndir;

// axes (light)
draw((-4.5,0)--(4.5,0), gray+0.4);
draw((0,-3)--(0,3), gray+0.4);

// ellipse
draw(ellipse((0,0), a, b), heavygreen);

// foci
dot(F1); dot(F2);
label("$S$", F1, S);
label("$S'$", F2, S);

// point P
dot("$P$", P, NE);

// focal radii
draw(F1--P, blue);
draw(F2--P, blue);

// extend F1P beyond P, to show the external angle
pair Pext = P + 1.6*unit(P-F1);
draw(P--Pext, blue+dashed);
label("$P'$", Pext, NE);

// tangent and normal lines
draw(Ttip2--Ttip1, red);
draw((P-1.8*ndir)--Ntip1, deepgreen);
label("$T'$", Ttip1, E);
label("$T$", Ttip2, W);
label("$N$", Ntip1, NE);
