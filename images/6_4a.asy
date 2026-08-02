settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

// Using a = 1 for the drawing (result QQ' = 12a is general)
real a = 1;

// Parabola y^2 = 4ax, parametrized as (t^2, 2t) since a = 1
pair P(real t) { return (t^2, 2t); }

// Draw parabola for t in [-3.3, 3.3] (covers L, L', Q, Q')
path parab = graph(new real(real t){return t^2;}, new real(real t){return 2t;}, -3.3, 3.3, operator ..);
draw(parab);

// Key points
pair F  = (a,0);        // focus
pair L  = P(1);         // (a, 2a)  -- end of latus rectum, t = 1
pair Lp = P(-1);        // (a,-2a)  -- end of latus rectum, t = -1
pair Q  = P(-3);         // (9a,-6a) -- second meeting point of normal at L
pair Qp = P(3);          // (9a, 6a) -- second meeting point of normal at L'
pair O  = (0,0);

// Axes
draw((-2,0)--(10,0), Arrow);
draw((0,-7)--(0,7), Arrow);
label("$x$", (10,0), E);
label("$y$", (0,7), N);

// Latus rectum
draw(L--Lp);

// Normals: L -> Q  and  Lp -> Qp
draw(L--Q, linetype("4 3"));
draw(Lp--Qp, linetype("4 3"));

// Points
dot(O); dot(F); dot(L); dot(Lp); dot(Q); dot(Qp);

label("$O$", O, SW);
label("$S$", F, N+0.3*E);
label("$L(a,2a)$", L, N);
label("$L'(a,-2a)$", Lp, S);
label("$Q(9a,-6a)$", Q, SE);
label("$Q'(9a,6a)$", Qp, NE);
