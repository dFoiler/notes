if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-52";
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
for(int i = 1; i < 8; i += 2)
dot(dir(360*i/8));
