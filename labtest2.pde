//C22307573 Rachel Appleyard

void setup()
{
  size(1000, 600);
  background(255);
  colorMode(HSB);
  rectMode(CENTER);

  for(int i = 100; i <= h*6; i = i+h)
  {
    fill(c,255,255);
    stroke(c,255,255);
    rect(300,i,250,h);
    if (c == 205)
    {c = 5;}
    c = c*2;
    if (c > 255)
    {
    c = 205;
    }
  }
}
int c=10;
int h = 40;
   
  

void draw()
{
  
}
