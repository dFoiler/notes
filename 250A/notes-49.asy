if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-49";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1.3cm);
draw(circle((0,0),1));
for(int i = 0; i < 4; ++i)
{
dot(dir(45+90*i));
}
draw((-1.5,0)--(1.5,0));
draw((0,-1.5)--(0,1.5));
