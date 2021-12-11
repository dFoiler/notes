if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-53";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(2cm);
draw((-1.5,0)--(1.5,0));
draw((0,-1.5)--(0,1.5));
draw(circle((0,0),1), gray);
draw(circle((0,0),1.18920712));
for(int i = 0; i < 4; ++i)
dot(1.18920712*dir(360*i/4));
label("$\sqrt[4]2$", (1.18920712, 0), NE);
