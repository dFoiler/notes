if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-10";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import three;
unitsize(0.35cm);
currentprojection=perspective(1,5/4,7/4);
draw((-6,0,0)--(6,0,0), EndArrow3);
label("$x$", (6,0,0), (2,0,0));
draw((0,-6,0)--(0,6,0), EndArrow3);
label("$y$", (0,6,0), (0,2,0));

draw(surface((6,-6,0)--(6,6,0)--(-6,6,0)--(-6,-6,0)--cycle), blue+opacity(0.4));
draw(unitsphere, opacity(1)+rgb(1,0,1));
