settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

defaultpen(linewidth(0.5pt));

// --- Ellipse parameters ---
real a = 4, b = 2;          // semi-axes
path ell = ellipse((0,0), a, b);

// --- External point ---
real px = 6, py = 3;
pair P = (px, py);

// --- Solve for tangent points ---
// Using substitution u = x/a, v = y/b -> unit circle u^2+v^2=1
// Line through P in (u,v): A*u + B*v = 1
real A = px/a, B = py/b;

real qa = A^2 + B^2;
real qb = -2*A;
real qc = 1 - B^2;
real disc = qb^2 - 4*qa*qc;

if (disc < 0) {
  write("Point is inside the ellipse: no real tangents.");
}

real u1 = (-qb + sqrt(disc))/(2*qa);
real u2 = (-qb - sqrt(disc))/(2*qa);
real v1 = (1 - A*u1)/B;
real v2 = (1 - A*u2)/B;

pair T1 = (a*u1, b*v1);
pair T2 = (a*u2, b*v2);

// --- Extend the line T1--T2 beyond both endpoints ---
real ext = 3;                     // how far to extend, in units
pair dir = unit(T2 - T1);         // unit direction vector
pair E1 = T1 - ext*dir;           // extended past T1
pair E2 = T2 + ext*dir;           // extended past T2

// --- Draw everything ---
draw(ell);
draw(P--T1, black);
draw(P--T2, black);

dot(P); dot(T1); dot(T2);
label("$Q(\alpha, \beta)$", P, E);
label("$A$", T1, N);
label("$B$", T2, S);

// optional: axes for reference
draw((-a-2,0)--(a+3,0), gray+0.5bp, Arrow);
draw((0,-b-1)--(0,py+1), gray+0.5bp, Arrow);
draw(T1 -- T2);
draw(E1 -- E2);
label("$P(x_1, y_1)$", E1, N);

filldraw(circle(E1, 0.05));
