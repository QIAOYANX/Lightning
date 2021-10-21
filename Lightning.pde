int startX =0;
int startY =150;
int endX=0;
int endY=150;
int r = 81;
int b = 95;
int g = 237;
void setup()
{
  size(300,300);
  noLoop();
  background(#030301);
}
void draw()
{
  r = (int)((Math.random()*300)+50);
  while(endX <= 300){
  endX = startX + ((int)(Math.random()*15)+1);
  endY = startY +((int)(Math.random()*50)-9);
  stroke(r);
  line(startX,startY,endX,endY);
  startX = endX;
  startY = endY;
  //lightning bolt
  fill(#F4FA53);
  ellipse(10,10,50,50);
  //UFO
  fill(#030301);
  ellipse(200,190,30,30);
  ellipse(200,200,40,20); 
  }
}
void mousePressed()
{
  endX = 0;
  endY = 0;
  startY = 0;
  startX = 0;
  redraw();
}
