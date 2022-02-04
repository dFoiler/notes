if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-7";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
draw((-1,0) .. (1,0) .. (1,1) .. (0,1/2) .. (1,0) .. (3/2,1/2) .. (2,0) .. (0,0) .. cycle);
