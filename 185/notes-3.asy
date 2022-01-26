if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-3";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
fill(circle((0,0),1), lightgray);
draw(circle((0,0),1));
draw(0.8*dir(90-72) -- 0.4*dir(90-5), red);
dot(0.8*dir(90-72));
dot(0.4*dir(90-5));
