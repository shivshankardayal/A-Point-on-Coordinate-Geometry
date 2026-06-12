settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;

size(5cm);

point xmin = (-1, 0);
point xmax = (4, 0);
point ymin = (0, -1);
point ymax = (0, 3);

draw(xmin -- xmax, Arrow);
draw(ymin -- ymax, Arrow);
draw((-1, 3) -- (4, 3));

point q = origin;
point r = (1, 3);
point p = (2.6, 1);

label("$x$", xmax, E);
label("$y$", ymax, N);
label("$Q$", q, SW);
label("$P(r,\theta)$", p, E);
label("$R(r,\theta + 60^\circ)$", r, N);

draw(r -- (1, 0));
draw(p -- (2.6, 0));
label("$N$", (1, 0), S);
label("$L$", (2.6, 0), S);
draw(p -- r);
draw(q -- p);
draw(q -- r);
markangle("$\theta$", radius=10, (2.6, 0), q, p);
markangle("$60^\circ$", radius=12, p, q, r);
