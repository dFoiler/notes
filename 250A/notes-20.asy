if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-20";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.5cm);
usepackage("chessfss"); // thank you https://tex.stackexchange.com/a/543024
fill((0,3)--(4,3)--(4,4)--(0,4)--cycle, rgb(1,0.9,0.9));
for(int i = 0; i < 5; ++i)
{
draw((i,0)--(i,4));
draw((0,i)--(4,i));
}
label("\rook", (0.5,3.5));
label("\rook", (0.5,0.5));
label("\rook", (3.5,0.5));
label("\rook", (3.5,3.5));
