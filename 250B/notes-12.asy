if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-12";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
import graph;
real y(real t)
{
return t;
}
real x(real t)
{
return t*t;
}
draw(graph(x, y,-2,2));
draw((-0.5,0)--(4,0), dotted); label("$t$", (4,0), E);
draw((0,-2)--(0,2), dotted); label("$x$", (0,2), N);
