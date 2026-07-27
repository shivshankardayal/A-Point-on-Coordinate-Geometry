settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

defaultpen(linewidth(0.5pt));

// --- Approximate "darken" shades ---
pen blue20   = rgb(0.00,0.00,0.65);   // blue.darken(20%)
pen orange10 = rgb(0.85,0.45,0.00);   // orange.darken(10%)
pen green20  = rgb(0.00,0.45,0.00);   // green.darken(20%)
pen teal10   = rgb(0.00,0.45,0.45);   // teal.darken(10%)
pen red10    = rgb(0.75,0.00,0.00);   // red.darken(10%)

// --- Parameters ---
real a = 3.0;    // semi-major axis
real b = 1.83;   // semi-minor axis
real c = 2.37;   // focal distance

// Point P on ellipse at angle 55 degrees
real ang = 55*pi/180;
real px = a*cos(ang);
real py = b*sin(ang);

// --- Axes ---
draw((-3.8,0)--(4.8,0), black, Arrow);
draw((0,-2.4)--(0,2.4), black, Arrow);
label("$x$", (4.8,0), E);
label("$y$", (0,2.4), N);
label("$C$", (0,0), SW);

// --- Ellipse ---
draw(ellipse((0,0), a, b), blue20);

// --- Point P ---
label(Label("$P$"), (px,py) + (0.2, -0.1), NE);
label(Label("$L$"), (-px,py), NE);
draw((px, py) + (0.2, -0.1) -- (px, 0) + (0.2, 0));
label("$M$", (px + 0.2, 0), S);
draw((-px, py) -- (-px, -py), dashed);
draw((px, py) -- (px, -py), dashed);
label("$L'$", (-px, -py), S);
label("$R$", (px, py), N);
label("$R'$", (px, -py), S);

draw((-3.7, py + 1) -- (-3.7, -py - 1));
draw((3.7, py + 1) -- (3.7, -py - 1));

label("$S$", (px, 0), NW);
label("$S'$", (-px, 0), NW);

label("$A$", (a, 0), E);
label("$A'$", (-a, 0), W);
label("$B$", (0, b), NE);
label("$B'$", (0, -b), SE);
draw((-3.7, py) -- (px, py) + (0.2, -.1));
draw((px, py) + (0.2, -.1) -- (-px, 0));
label("$N'$", (-3.7, py), W);
label("$N$", (3.7, py), E);
label("$Q'$", (-3.7, 0), SW);
label("$Q$", (3.7, 0), SE);
