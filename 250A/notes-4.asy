if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1.3cm);
// ugh fine I'll code it correctly
void drawSquare(pair b, string name, int p1, int p2, int p3, int p4)
{
int[] e = {p1,p2,p3,p4};
pair[] vs = {(0,0), (1,0), (1,1), (0,1)};
pair[] dirs = {NE, NW, SW, SE};
draw(b+vs[0] -- b+vs[1] -- b+vs[2] -- b+vs[3] -- cycle);
for(int i = 0; i < 4; ++i)
label("$"+string(i+1)+"$", b+vs[i], dirs[i]);
label("$\stackrel{"+name+"}\longrightarrow$", b+(1.5,0.5));
b += (2,0);
draw(b+vs[0] -- b+vs[1] -- b+vs[2] -- b+vs[3] -- cycle);
for(int i = 0; i < 4; ++i)
label("$"+string(e[i])+"$", b+vs[i], dirs[i]);
}
drawSquare((0,0), "e", 1,2,3,4);
drawSquare((4,0), "90^\circ", 4,1,2,3);
drawSquare((0,-1.5), "180^\circ", 3,4,1,2);
drawSquare((4,-1.5), "270^\circ", 2,3,4,1);
drawSquare((0,-3), "h", 2,1,4,3);
drawSquare((4,-3), "v", 4,3,2,1);
drawSquare((0,-4.5), "d_1", 3,2,1,4);
drawSquare((4,-4.5), "d_2", 1,4,3,2);
