settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;
import markers;

size(6cm);

// ---- given data ----
real a = 2;              // radius of circle through A, B
real b = 3;              // radius of circle to which the directrix is tangent
real theta = 50*pi/180;  // parameter fixing one particular position of the directrix

// ---- basic points ----
pair O = (0,0);
pair A = (-a,0), B = (a,0);
pair nvec = (cos(theta), sin(theta));       // unit normal of the directrix
pair T = b*nvec;                            // point of tangency on circle radius b
pair F = (b*cos(theta), sin(theta)*sqrt(b^2-a^2)); // corresponding focus (on the locus)

// vertex / axis data for THIS parabola
real f = (b - dot(F,nvec))/2;
pair V = F + f*nvec;
pair xhat = -nvec;                    // axis direction (vertex -> focus)
pair yhat = (-nvec.y, nvec.x);        // direction along the directrix

// ---- directrix line (through T) ----
pair D1 = T + 6*yhat;
pair D2 = T - 6*yhat;

// ---- coordinate axes: AB and the perpendicular diameter ----
draw((-4.3,0)--(4.3,0));
draw((0,-4.3)--(0,4.3));
label("$x$", (4.3,0), E);
label("$y$", (0,4.3), N);

// ---- the two given concentric circles ----
draw(circle(O,a), linetype("4 4"));
draw(circle(O,b), linetype("2 2"));

// ---- directrix (tangent to circle radius b at T) ----
draw(D1--D2);
draw(O--T, linetype("1 3"));           // radius to point of tangency
label("$T$", T, NE);
label("directrix", D2, SW);

// ---- the parabola through A and B with focus F, this directrix ----
path parab;
int n = 60;
real tmin = -2.6, tmax = 2.6;
for (int i=0; i<=n; ++i){
  real t = tmin + (tmax-tmin)*i/n;
  real xl = t^2/(4*f);
  pair P = V + xl*xhat + t*yhat;
  if (i==0) parab = P; else parab = parab..P;
}
draw(parab);

// ---- the locus of F:  x^2/b^2 + y^2/(b^2-a^2) = 1 ----
path locus;
real cc = sqrt(b^2-a^2);
for (int i=0; i<=n; ++i){
  real phi = 2*pi*i/n;
  pair P = (b*cos(phi), cc*sin(phi));
  if (i==0) locus = P; else locus = locus..P;
}
draw(locus, linetype("6 3"));

// ---- key points ----
dot(A); dot(B); dot(O); dot(F); dot(T);
label("$A$", A, SW);
label("$B$", B, SE);
label("$O$", O, S);
label("$F$", F, N);

// ---- radius labels ----
label("$a$", (A+O)/2, S);
label("$b$", (O+T)/2, NW);
