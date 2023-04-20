//C22307573 Rachel Appleyard

void setup()
{
  size(1000, 600);
  background(255);
  colorMode(HSB);
  

}
int c = 10;
void draw()
{
  for(int i = 100; i >= 250; i = i+20)
  {
    fill(c, 255,255);
    stroke(c,255,255);
    rect(100,i,250,30);
    c = c*2;
    if (c > 255)
    {
    c = 205;
    }
  }
}
