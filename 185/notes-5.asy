if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-5";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.6cm);
path p;
for(int i = 0; i < 5; ++i)
{
p = p -- dir(360/5 * i+198);
p = p -- sqrt(5)*dir(360/5 * (i+0.5)+198);
}
fill(p -- cycle, lightgray);
draw(p -- cycle);
draw(circle((0,0),2.5), dashed);
