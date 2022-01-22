if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-3";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import three;
unitsize(1.4cm);
currentprojection=perspective(1,5/4,3/4);
draw((-3,0,0)--(3,0,0), EndArrow3);
label("$x$", (3,0,0), (2,0,0));
draw((0,-3,0)--(0,3,0), EndArrow3);
label("$y$", (0,3,0), (0,2,0));
draw((0,0,-2)--(0,0,3), EndArrow3);
label("$z$", (0,0,3), (0,0,1.5));

label("$1$", (0,0,1/2), (0.2,0,0), blue);
draw((0,0,0)--(0,0,1), blue+linewidth(1));
draw(surface((3,-2,1)--(3,3,1)--(-2,3,1)--(-2,-2,1)--cycle), blue+opacity(0.4));
draw((3,0,1)--(-2,0,1), dashed);
draw((0,3,1)--(0,-2,1), dashed);

triple v = (-1,2,1);
dot("$v$", v, (0,0,1), red);
draw(-v -- 1.5*v, red);
draw((0, v.y, 1) -- v, dashed);
draw((v.x, 0, 1) -- v, dashed);
