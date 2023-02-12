int len = 0;
public void setup()
{
  size(600, 600);
  background(255);
}

public void draw()
{
  background(255);
  myFractal(0, height, len);
}

public void mouseDragged()
{
  len = 0 + mouseX;
}

public void myFractal(float x, float y, float len)
{
  fill(135, 206, 235, 100);
  stroke(255);
  ellipse(x, y, len/1.5, len/1.5);
  ellipse(x, y-len/1.5, len/1.5, len/1.5);
  ellipse(x+len/1.5, y, len/1.5, len/1.5);
  fill(140, 208, 230, 100);
  ellipse(x+len/1.5, y-len/1.5, len/1.5, len/1.5);
  if (len >= 1)
  {
    myFractal(x+len/8.0, y-len/8.0, len/1.2);
  }
}
