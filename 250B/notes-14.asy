if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-14";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.5cm);
import graph;
draw((-4,1)--(4,1));
draw((0,-4)--(0,4));
draw((-4,0)--(4,0), dotted); label("$t$", (4,0), E);
label("$x$", (0,4), N);
