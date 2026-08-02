settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

// Use concrete illustrative values: a = 1, b = 3
real a = 1, b = 3;
real x1 = b^2/(4*a);   // x-coordinate of incidence point P

pair Ppt(real y) { return (y^2/(4*a), y); }

// Build parabola path
path parab = Ppt(-4.5);
for (real y = -4.4; y <= 4.5; y += 0.05)
    parab = parab--Ppt(y);

// Axes
draw((-4.5,0)--(7,0), Arrow, L=Label("$x$", position=EndPoint));
draw((0,-5)--(0,5), Arrow, L=Label("$y$", position=EndPoint));

// Parabola (mirror)
draw(parab, blue);

// Point of incidence P and focus S
pair P = (x1, b);
pair S = (a, 0);

// Classical points: tangent meets x-axis at (-x1,0); normal meets x-axis at (x1+2a,0)
pair T = (-x1, 0);
pair N = (x1 + 2*a, 0);

// Incident ray: comes from positive x-direction along y = b, hits P
draw((6.5, b)--P, red);
label("incident ray", (5, b+0.4), red);

// Reflected ray: from P through focus, extended beyond S
pair dir = unit(S - P);
pair Rend = S + 3.2*dir;
draw(P--Rend, heavygreen);
label("reflected ray", (0.3, -2.6), heavygreen);

// Tangent line PT
draw(T--(P + 1.3*(P-T)), deepgrey);
label("$T$", T, S, deepgrey);
label("tangent", (P + 1.3*(P-T)) + (0.3,0.3), deepgrey);

// Normal line PN
draw(P--N, orange);
label("$N$", N, S, orange);
label("normal", N + (0.3,0.6), orange);

markangle("$\theta$", radius=10, Rend, P, N);
markangle("$\theta$", radius=12, N, P, (6.5, b));

// Dashed vertical helper from P to axis
draw(P--(x1,0), dashed+gray);

// Mark points
dot("$P\left(\frac{b^2}{4a},\,b\right)$", P, NW, black);
dot("$S(a,0)$", S, S, black);
dot((x1,0), gray);
dot("$O$", (0,0), SW);

// Parabola equation label
label("$y^2=4ax$", (5.5,3.8), blue);
label("$y=b$", (-2,b), N, gray);

// Angles of incidence and reflection at P, measured from the normal PN
real ang_in  = degrees(P - (6.5,b));   // direction along incoming ray towards P
real ang_norm = degrees(N - P);
real ang_ref = degrees(Rend - P);
