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
real ang = 45*pi/180;
real px = a*cos(ang);
real py = a*sin(ang);
real pye = b*sin(ang);

// --- Axes ---
draw((-3.8,0)--(3.8,0), black, Arrow);
draw((0,-3.8)--(0,3.8), black, Arrow);
label("$x$", (3.8,0), E);
label("$y$", (0,3.8), N);
label("$C$", (0,0), SW);

// --- Ellipse ---
draw(ellipse((0,0), a, b), blue20);
draw(circle(origin, 3));
draw(origin -- (px, py) -- (px, 0));

label("$A$", (a, 0), NE);
label("$A'$", (-a, 0), SW);
label("$B$", (0, b), NE);
label("$B'$", (0, -b), SE);
label("$D$", (0, 3), NE);
label("$D'$", (0, -3), SE);
markangle("$\theta$", radius=10, (px, 0), origin, (px, py));
label("$Q(a\cos\theta, a\sin\theta)$", (px, py), NE);
label("$P(a\cos\theta, b\sin\theta)$", (px, pye), NE);
