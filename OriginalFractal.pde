int len = 0;
public void setup()
{
  size(600, 600);
  background(350, 250, 250);
}

public void draw()
{
  background(255, 250, 250);
  myFractal(mouseX, mouseY, len);
}

public void mousePressed()
{
  len = mouseY;
}

public void myFractal(float x, float y, float len)
{
  fill(173, 216, 230, 150);
  stroke(255);
  ellipse(x, y, len/1.5, len/1.5);
  ellipse(x, y-len/1.5, len/1.5, len/1.5);
  ellipse(x+len/1.5, y, len/1.5, len/1.5);
  ellipse(x+len/1.5, y-len/1.5, len/1.5, len/1.5);
  if(len >= 1)
  {
    myFractal(x+len/8.0, y-len/8.0, len/1.2);
  }
}
