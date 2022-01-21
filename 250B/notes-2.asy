if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph;
unitsize(0.7cm);
draw((-3.5,0)--(3.5,0)); draw((0,-3.5)--(0,3.5));
pair L(real y)
{
return (-sqrt(1+y*y), y);
}
pair R(real y)
{
return (+sqrt(1+y*y), y);
}
draw(graph(L, -2.8, 2.8), arrow=Arrows());
draw(graph(R, -2.8, 2.8), arrow=Arrows());
