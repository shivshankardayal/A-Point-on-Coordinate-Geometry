settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;

size(5cm);

circle c = circle((point)(0, 0), 2);
draw(c);

point xmin = (-3, 0);
point xmax = (3, 0);
point ymin = (0, -3);
point ymax = (0, 3);

draw(xmin -- xmax, Arrows);
draw(ymin -- ymax, Arrows);

point p1 = (2, 0);
point p2 = (sqrt(3), 1);
point p3 = (sqrt(2), sqrt(2));
point p4 = (1, sqrt(3));
point p5 = (0, 2);
point p6 = (-1, sqrt(3));
point p7 = (-sqrt(2), sqrt(2));
point p8 = (-sqrt(3), 1);
point p9 = (-2, 0);
point p10 = (-sqrt(3), -1);
point p11 = (-sqrt(2), -sqrt(2));
point p12 = (-1, -sqrt(3));
point p13 = (0, -2);
point p14 = (1, -sqrt(3));
point p15 = (sqrt(2), -sqrt(2));
point p16 = (sqrt(3), -1);

dot(p1);
dot(p2);
dot(p3);
dot(p4);
dot(p5);
dot(p6);
dot(p7);
dot(p8);
dot(p9);
dot(p10);
dot(p11);
dot(p12);
dot(p13);
dot(p14);
dot(p15);
dot(p16);

label("$x$", xmax, E);
label("$y$", ymax, N);
label("$O$", origin, SW);


point q = (sqrt(.76), 1.8);
label("$Q$", q, N);
draw(q -- (sqrt(.76), 0));
draw(origin -- q);
label("$M$", (sqrt(.76), 0), S);
