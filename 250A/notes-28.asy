if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-28";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
draw((-1,-0.1)--(1,-0.1)--(1,0.1)--(-1,0.1)--cycle);
draw((-1.5,0) -- (1.5,0), red+dashed);
draw((0,-0.3)--(0,0.3), blue+dashed);
