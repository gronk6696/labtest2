//C22307573 Rachel Appleyard
IntList colourH;
IntList colourS;
IntList colourB;
Flag flag1;
void setup()
{
  size(1000, 600);
  background(255);
  colorMode(HSB);
  rectMode(CENTER);
  
  colourH = new IntList();
  colourH.append(0);
  colourH.append(20);
  colourH.append(210);
  colourH.append(40);
  
  colourS = new IntList();
  colourS.append(0);
  colourS.append(100);
  colourS.append(85);
  colourS.append(255);
  
  colourB = new IntList();
  colourB.append(0);
  colourB.append(100);
  colourB.append(255);
  colourB.append(240);
  
  flag1 = new Flag();  
}
class Flag
{
  int c=10;
  int h = 30;
  int w = 500;
  int x = 500;
  int margin = h/3;
  int margin2 = (h/6)*5;
  int k = 1;
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
    
    for(int i = 0; i<= 3; i ++)
    {
     
      fill(colourH.get(i),colourS.get(i),colourB.get(i));
      stroke(colourH.get(i),colourS.get(i),colourB.get(i));
      triangle(x-i*(h/2),(h*3)+margin2, x-w/2, margin2+i*(h/2), x-w/2,(h*6)+margin2-i*(h/2));
      if (k==1)
      {k = 40;}
      else if (k==40)
      {k = 240;}
      else if (k==240)
      {k=20;}
      else if(k==0)
      {k=1;}
    }
    noFill();
    strokeWeight(5);
    stroke(220,255,255);
    circle(x-w/3,(h*3)+margin2,h*1);
    strokeWeight(1);
  }
}

void draw()
{
  flag1.display();
}
