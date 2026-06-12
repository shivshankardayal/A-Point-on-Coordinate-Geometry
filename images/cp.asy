// cover_page.asy
import graph;
import fontsize;

settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");

size(17.6cm, 25cm); // Page width fixed, height auto
//unitsize(1cm);
// Page dimensions
real W = 17.6cm;
real H = 25cm; // b5 paper size

// Background
fill((0,0)--(W,0)--(W,H)--(0,H)--cycle, rgb(0.0,0.4,0.6)); // purple

// Title and Author text
label("Loci of Points in Coordinate Geometry",
      (0, H/4.5), align=SE, p=white + fontsize(28pt));
draw((0,H/5.6)--(W,H/5.6), white+1.5bp);
label("A problem-oriented approach",
      (W-0.58*W, H/5.5), align=SE, p=white + fontsize(20pt));
label(rotate(270)*"Shiv Shankar Dayal",
      (W-0.1*W, H-0.3*W), align=NE, p=white);

// Coordinate system
pair O = (W/2,H/2);
real r = 6cm;
pair X = O + (r,0);
pair Xn = O - (r,0);
pair Y = O + (0,r);
pair Yn = O - (0,r);

fill(circle(O,6cm),white);
draw(X--Xn, Arrows());
draw(Y--Yn, Arrows());
label("$x$", X-(0.2cm,0), align=N);
label("$y$", Y-(0,0.2cm), align=E);
label("$O$", O-(0.1cm,0.1cm), align=SW);

// Graphs
real step = 0.01;
pen fpen = rgb(0.0,0.4,0.6);

guide circ1 = graph(new real(real x){return sqrt(16-x^2);}, -4, 4, operator ..);
draw(shift(O)*scale(1cm)*circ1, fpen);
draw(shift(O)*scale(1cm)*reflect((0,0),(1,0))*circ1, fpen);

guide ell1 = graph(new real(real x){return sqrt(4*(1 - x^2/9));}, -3, 3, operator ..);
draw(shift(O)*scale(1cm)*ell1, fpen);
draw(shift(O)*scale(1cm)*reflect((0,0),(1,0))*ell1, fpen);

// Dashed helper lines
pen dpen = gray(0.7)+dashed+0.1bp;

// verticals
for (int k=1; k<=5; ++k) {
  real ymax = sqrt(36-k^2); // for circle radius 6
  draw(shift(O)*scale(1cm)*((-k,-ymax)--(-k,ymax)), dpen);
  draw(shift(O)*scale(1cm)*(( k,-ymax)--( k,ymax)), dpen);
}

// horizontals
for (int k=1; k<=5; ++k) {
  real xmax = sqrt(36-k^2);
  draw(shift(O)*scale(1cm)*((-xmax, k)--( xmax, k)), dpen);
  draw(shift(O)*scale(1cm)*((-xmax,-k)--( xmax,-k)), dpen);
}

