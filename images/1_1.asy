settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;

size(4cm);

point A = (-2, -3);
point B = (-1, 0);
point C = (7, -6);

show(triangle(A, B, C));
circle c = circumcircle(triangle(A, B, C));
draw(c);
point p = circumcenter(triangle(A, B, C));
draw(p -- A);
draw(p -- B);
draw(p -- C);
label("$P(x, y)$", p, SE);
