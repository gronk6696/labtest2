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
  int h = 30;
  int w = 300;
  int x = 500;
  int margin = 10;
  int margin2 = 25;
  
  int[] colourH = new int[2];
  colorH[0] = 0;
  colorH[1] = 20;
  
  //int[] colourH {0,20,240,40};
  //int[] colourS {0,100,85,255};
 // int[] colourB {0,100,255,240};



  void display()
  {
    for(int i = margin+h; i <= (h*6)+margin; i = i+h)
    {
      fill(c,255,255);
      stroke(c,255,255);
      rect(x,i,w,h);
      if (c == 205)
      {c = 5;}
      c = c*2;
      if (c > 255)
      {
        c = 205;
      }
    }
    
    for(int i = 0; i<= 4; i ++)
    {
      fill(0);
      triangle(x-i*(h/2),(h*3)+margin2, x-w/2, margin2+i*(h/2), x-w/2,(h*6)+margin2-i*(h/2));
    }
  }
}

void draw()
{
  flag1.display();
}
