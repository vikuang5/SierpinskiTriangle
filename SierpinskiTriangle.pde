int baseCase = 20; 
int myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
public void setup()
{
  size(400, 400);
  background(110, 255, 255);
}
public void draw()
{
  sierpinski(110, 270, 200);
  fill(myColor);
}
public void keyPressed()
{
  if (key == '1') {
    baseCase = baseCase + 20;
  }
  if (key == '2') {
    baseCase = baseCase - 10;
  }
}
public void sierpinski(int x, int y, int len) {
  if (len <= baseCase) {
    triangle(x, y, x+len/2, y-len, x+len, y);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
