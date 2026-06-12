settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(4cm);

point A = (-10/19, 85/19);
point B = (-13, -33/2);
point C = (35/2, -10);
triangle t = triangle(A, B, C);
show(t, La="", Lb="", Lc="");
real angle = degrees(atan2(B.y - A.y, B.x - A.x));

label(rotate(angle + 180)*"$3x - 2y + 6 = 0$", midpoint(B--A) + (-0.07cm, 0.07cm));
angle = degrees(atan2(C.y - A.y, C.x - A.x));

label(rotate(angle)*"$4x - 5y= 20$", midpoint(C--A) + (0.07cm, 0.07cm));

point H = orthocenter(t);
line al = line(A, H);
line bm = line(B, H);
line cn = line(C, H);
point l = intersectionpoint(al, line(B, C));
draw(A -- l);
point m = intersectionpoint(bm, line(A, C));
draw(B -- m);
point n = intersectionpoint(cn, line(A, B));
draw(C -- n);
perpendicularmark(line(B, C), al, quarter=1);
label("$L$", l, S);
label("$M$", m + (-0.02cm, 0.02cm), NE);
