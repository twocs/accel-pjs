void setup()
{
  size(400,400);
  stroke(0);
  fill(0);
  textSize(40);
}

void draw()
{
  background(#AAAAAA);
  if(x == null)
  {
    text("sensor not detected", 20, 60);
  }
  else
  {
    text("x: " + x, 20, 60);
    text("y: " + y, 20, 120);
    text("z: " + z, 20, 180);
  }
}

