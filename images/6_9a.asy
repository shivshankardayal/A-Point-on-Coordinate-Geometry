settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

real a = 3, b = 1.8;
real c = sqrt(a^2-b^2);

// support-function center for an ellipse (semi-axes a,b) rotated by theta,
// tangent to the positive x-axis and positive y-axis
pair center(real theta){
  real h = sqrt(a^2*cos(theta)^2 + b^2*sin(theta)^2);
  real k = sqrt(a^2*sin(theta)^2 + b^2*cos(theta)^2);
  return (h,k);
}

pair focus1(real theta){
  pair C = center(theta);
  return C + c*(cos(theta), sin(theta));
}
pair focus2(real theta){
  pair C = center(theta);
  return C - c*(cos(theta), sin(theta));
}

// axes (the two perpendicular lines)
draw((-1,0)--(6,0), Arrow);
draw((0,-1)--(0,6), Arrow);
label("$x$", (6,0), E);
label("$y$", (0,6), N);
dot("$O$", (0,0), SW);

// ---- draw one instance of the sliding ellipse, tangent to both axes ----
real theta0 = radians(35);
pair C0 = center(theta0);

path ell;
int n = 200;
for(int i=0; i<=n; ++i){
  real t = 2*pi*i/n;
  real x = a*cos(t), y = b*sin(t);
  real X = C0.x + x*cos(theta0) - y*sin(theta0);
  real Y = C0.y + x*sin(theta0) + y*cos(theta0);
  ell = (i==0) ? (X,Y) : ell--(X,Y);
}
ell = ell--cycle;
draw(ell, heavygreen);

dot("$C$", C0, N);

pair F1 = focus1(theta0);
pair F2 = focus2(theta0);
dot("$F_1$", F1, dir(-60));
dot("$F_2$", F2, dir(120));
draw(F1--F2, gray+0.5);

// tangency points with the axes
pair Tx = (C0.x, 0);
pair Ty = (0, C0.y);
dot(Tx, red);
dot(Ty, red);
draw(C0--Tx, dashed+gray);
draw(C0--Ty, dashed+gray);

// ---- locus of the foci as theta varies (sweep) ----
path locus1, locus2;
int m = 140;
for(int i=0; i<=m; ++i){
  real th = radians(2) + (radians(88)-radians(2))*i/m;
  pair p1 = focus1(th);
  pair p2 = focus2(th);
  locus1 = (i==0) ? p1 : locus1--p1;
  locus2 = (i==0) ? p2 : locus2--p2;
}
draw(locus1, blue);
draw(locus2, blue);

label("locus of foci", point(locus1, length(locus1)*0.62), NE, blue);

// show a couple more "snapshot" ellipses lightly, to suggest sliding motion
void ghostEllipse(real theta){
  pair C = center(theta);
  path g;
  for(int i=0; i<=n; ++i){
    real t = 2*pi*i/n;
    real x = a*cos(t), y = b*sin(t);
    real X = C.x + x*cos(theta) - y*sin(theta);
    real Y = C.y + x*sin(theta) + y*cos(theta);
    g = (i==0) ? (X,Y) : g--(X,Y);
  }
  g = g--cycle;
  draw(g, gray+0.4+dashed);
}
ghostEllipse(radians(12));
ghostEllipse(radians(65));

label("$a,b$ = semi-axes of sliding ellipse", (3.0,-0.7), S);
