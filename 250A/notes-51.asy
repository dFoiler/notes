if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-51";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1.5cm);
draw((-1.25,0)--(1.25,0));
draw((0,-1.25)--(0,1.25));
draw(circle((0,0),1));
for(int i = 0; i < 17; ++i)
dot(dir(360*i/17));
