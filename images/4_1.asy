settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
import labelpath;

size(6cm);
defaultpen(linewidth(.5bp));

// --- Custom colors ---
pen teal_       = rgb(0.0, 0.5, 0.5);
pen purple_     = rgb(0.5, 0.0, 0.5);
pen orange_     = rgb(0.9, 0.5, 0.0);
pen darkblue_   = rgb(0.0, 0.0, 0.55);
pen darkgreen_  = rgb(0.0, 0.4, 0.0);
pen gray30      = gray(0.3);
pen gray40      = gray(0.4);

// --- Points ---
pair O = (0, 0);
pair P = (2.6, 2.8);

// Line directions from slopes
real slope1 = 2.2;
real slope2 = 0.45;
pair l1dir = unit((1, slope1));
pair l2dir = unit((1, slope2));

// Foot of perpendicular from p onto line through O with unit direction u
pair foot(pair p, pair u) {
  real t = dot(p, u);
  return t * u;
}

pair F1 = foot(P, l1dir);   // A
pair F2 = foot(P, l2dir);   // B

// --- Manual right-angle square marker at foot point F, along line direction dir ---
void rightAngleSquare(pair F, pair dir, pair towardP, real s = 0.15, pen p = gray30+0.6pt) {
  pair n = (-dir.y, dir.x);          // normal to the line
  if (dot(towardP - F, n) < 0) n = -n; // point normal toward P
  pair a = F + s*n;
  pair b = a + s*dir;
  pair c = F + s*dir;
  draw(a--b--c, p);
}

// --- Manual angle arc marker at vertex O between rays to A and B ---
void angleArc(pair vertex, pair toA, pair toB, real r = 0.3, pen p = gray(0.2)) {
  real a1 = degrees(toA - vertex);
  real a2 = degrees(toB - vertex);
  draw(arc(vertex, r, a1, a2), p);
}

// --- Axes ---
draw((-0.5, 0)--(5.5, 0), gray40+0.5, Arrow);
draw((0, -0.5)--(0, 4.2), gray40+0.5, Arrow);
label("$x$", (5.5, 0), E);
label("$y$", (0, 4.2), N);
label("$O$", O, SW, fontsize(10pt));
dot(O, gray30);

// --- Line L1 through origin ---
draw((-0.5*l1dir)--(4.0*l1dir), darkblue_+1pt);
label("$L_1$", 4.1*l1dir, NE);

// --- Line L2 through origin ---
draw((-0.5*l2dir)--(5.2*l2dir), darkgreen_+1pt);
label("$L_2$", 5.3*l2dir, E);

// --- Dashed perpendiculars from P ---
draw(P--F1, purple_+0.8pt+dashed);
draw(P--F2, purple_+0.8pt+dashed);

// --- Right-angle marks at F1 and F2 ---
rightAngleSquare(F1, l1dir, P);
rightAngleSquare(F2, l2dir, P);

// --- Segment F1F2 (the required length) ---
draw(F1--F2, orange_+1.8pt);

// --- Dots ---
dot(P, purple_+3pt);
dot(F1, red+3pt);
dot(F2, red+3pt);

// --- Point labels ---
label("$P(p,q)$", P, NW, fontsize(10pt));
label("$A$", F1, E, fontsize(10pt));
label("$B$", F2, NW, fontsize(10pt));

// --- Angle theta between L1 and L2 at O ---
angleArc(O, F2, F1, 0.3);
label("$\theta$", O, dir(45)*10, fontsize(10pt));

// --- Line OP ---
draw(O--P);
