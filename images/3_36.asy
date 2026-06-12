settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;

size(4cm);

// --- Vertices ---
pair A = (0, 0);
pair B = (5, 0);
pair C = (1.8, 4);

// --- Midpoints ---
pair Mab = (A + B) / 2;
pair Mbc = (B + C) / 2;
pair Mca = (C + A) / 2;

// --- Perpendicular bisector directions (rotate edge by 90 deg) ---
pair dAB = rotate(90) * (B - A);
pair dBC = rotate(90) * (C - B);
pair dCA = rotate(90) * (A - C);

// --- Circumcenter via intersection of two perp bisectors ---
pair O = extension(Mab, Mab + dAB, Mbc, Mbc + dBC);

// --- Circumradius ---
real R = abs(O - A);

// --- Circumscribed circle ---
//draw(circle(O, R), thin);

// --- Perpendicular bisectors extended through O ---
real t = 1.4;
draw(Mab - t*(O - Mab) -- Mab + t*(O - Mab), blue + dashed);
draw(Mbc - t*(O - Mbc) -- Mbc + t*(O - Mbc), red + dashed);
draw(Mca - t*(O - Mca) -- Mca + t*(O - Mca), darkgreen + dashed);

// --- Triangle ---
draw(A -- B -- C -- cycle, black + linewidth(0.5));

// --- Right-angle marks ---
real s = 0.18;

// At Mab (AB edge)
pair uAB = unit(B - A);
pair vAB = rotate(90) * uAB;
draw((Mab + s*uAB) -- (Mab + s*uAB + s*vAB) -- (Mab + s*vAB));

// At Mbc (BC edge)
pair uBC = unit(C - B);
pair vBC = rotate(90) * uBC;
draw((Mbc + s*uBC) -- (Mbc + s*uBC + s*vBC) -- (Mbc + s*vBC));

// At Mca (CA edge)
pair uCA = unit(A - C);
pair vCA = rotate(90) * uCA;
draw((Mca + s*uCA) -- (Mca + s*uCA + s*vCA) -- (Mca + s*vCA));

// --- Midpoint dots ---
dot(Mab, black);
dot(Mbc, black);
dot(Mca, black);

// --- Circumcenter dot and label ---
dot(O, black);
label("$O$", O, NE);

// --- Vertex labels ---
label("$A$", A, SW);
label("$B$", B, SE);
label("$C$", C, N);
