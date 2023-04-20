//C22307573 Rachel Appleyard

void setup()
{
  size(1000, 600);
  background(255);
  colorMode(HSB);
  rectMode(CENTER);

  for(int i = 10+h; i <= (h*6)+10; i = i+h)
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
  stroke(0);
  fill(0);
  triangle(300,(h*3)+25,175,25,175,(h*6)+25);
  stroke(20,100,100);
  fill(20,100,100);
  triangle(300-(h/2),(h*3)+25,175,25+(h/2),175,(h*6)+25-(h/2));
  stroke(240,85,255);
  fill(240,85,255);
  triangle(300-2*(h/2),(h*3)+25,175,25+2*(h/2),175,(h*6)+25-2*(h/2));
  stroke(30,240,240);
  fill(40,255,240);
  triangle(300-3*(h/2),(h*3)+25,175,25+3*(h/2),175,(h*6)+25-3*(h/2));
  
}
int c=10;
int h = 30;


void draw()
{
  
}
