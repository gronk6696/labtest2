//C22307573 Rachel Appleyard

Flag flag1;
void setup()
{
  size(1000, 600);
  background(255);
  colorMode(HSB);
  rectMode(CENTER);
  
  flag1 = new Flag();  
}
class Flag
{
  int c=10;
  int h = 10;
  int w = 100;
  
  void display()
{
  for(int i = 10+h; i <= (h*6)+10; i = i+h)
  {
    fill(c,255,255);
    stroke(c,255,255);
    rect(100,i,w,h);
    if (c == 205)
    {c = 5;}
    c = c*2;
    if (c > 255)
    {
    c = 205;
    }
  }
}}



void draw()
{
  flag1.display();
}
