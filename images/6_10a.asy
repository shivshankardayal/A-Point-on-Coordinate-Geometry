settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

real a = 3, b = 1.8;
real R = sqrt(a^2+b^2);   // radius of the locus circle

pair center(real theta){
  real h = sqrt(a^2*cos(theta)^2 + b^2*sin(theta)^2);
  real k = sqrt(a^2*sin(theta)^2 + b^2*cos(theta)^2);
  return (h,k);
}

path ellipseAt(real theta){
  pair C = center(theta);
  path g;
  int n = 200;
  for(int i=0; i<=n; ++i){
    real t = 2*pi*i/n;
    real x = a*cos(t), y = b*sin(t);
    real X = C.x + x*cos(theta) - y*sin(theta);
    real Y = C.y + x*sin(theta) + y*cos(theta);
    g = (i==0) ? (X,Y) : g--(X,Y);
  }
  return g--cycle;
}

draw((-1,0)--(6,0), Arrow);
draw((0,-1)--(0,6), Arrow);
label("$x$", (6,0), E);
label("$y$", (0,6), N);
dot("$O$", (0,0), SW);

// the locus circle, radius R = sqrt(a^2+b^2), centered at O
draw(circle((0,0), R), blue);
label("locus of centers", R*dir(112), N, blue);

// several snapshot ellipses as it "slides", each tangent to both axes
real[] angles = {8, 30, 50, 75};
for(int i=0; i<angles.length; ++i){
  real th = radians(angles[i]);
  draw(ellipseAt(th), gray+0.6+dashed);
  pair C = center(th);
  dot(C, red);
}

// highlight one instance solidly, with center labelled and tangent points shown
real theta0 = radians(40);
pair C0 = center(theta0);
draw(ellipseAt(theta0), heavygreen);
dot("$C$", C0, N);

pair Tx = (C0.x, 0);
pair Ty = (0, C0.y);
dot(Tx, red);
dot(Ty, red);
draw(C0--Tx, dashed+gray);
draw(C0--Ty, dashed+gray);
draw((0,0)--C0, dashed+gray);

label("$a,b$ = semi-axes of the ellipse", (3.0,-0.7), S);
label("$R=\sqrt{a^2+b^2}$", (0.35*R, 0.15), NE, blue);
