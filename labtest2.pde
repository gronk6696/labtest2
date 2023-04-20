//C22307573 Rachel Appleyard
IntList colourH;
IntList colourS;
IntList colourB;
IntList xCords;
IntList yCords;
Flag flag1;
Flag flag2;
Flag flag3;
Flag flag4;
Flag flag5;
Flag flag6;
Flag flag7;
Flag flag8;
Flag flag9;

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
  
  
  
  xCords = new IntList();
  for (int i = 0; i < 10; i++)
  {
    int index = int(random(0,width));
    xCords.append(index);
  }
  
  yCords = new IntList();
   for (int i = 0; i < 10; i++)
  {
    int index = int(random(0,height));
    yCords.append(index);
  }
  
  
  
  flag1 = new Flag(xCords.get(0), yCords.get(0));  
  flag2 = new Flag(xCords.get(1), yCords.get(1));  
  flag3 = new Flag(xCords.get(2), yCords.get(2));  
  flag4 = new Flag(xCords.get(3), yCords.get(3));  
  flag5 = new Flag(xCords.get(4), yCords.get(4));  
  flag6 = new Flag(xCords.get(5), yCords.get(5));  
  flag7 = new Flag(xCords.get(6), yCords.get(6));  
  flag8 = new Flag(xCords.get(7), yCords.get(7));
  flag9 = new Flag(xCords.get(8), yCords.get(8));  
  
}
class Flag
{ 
  int x, y;
  int c=10;
  int h = 30;
  int w = 500;
  int margin = h/3;
  int margin2 =(y/100)*85;
  int k = 1;
  
  Flag(int xpos, int ypos)
  {
    x = xpos;
    y = ypos;
  }
  void display()
  {
    for(int i = 0; i < (h*6); i = i+h)
    {
      fill(c,255,255);
      stroke(c,255,255);
      rect(x,y+i,w,h);
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
      triangle(x-i*(h/2),y+(h*3)+margin2, x-w/2, y+margin2+i*(h/2), x-w/2,y+(h*6)+margin2-i*(h/2));
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
    circle(x-w/3,(y+h*3)+margin2,h*1);
    strokeWeight(1);
  }
}

void draw()
{
  flag1.display();
  flag2.display();
  flag3.display();
  flag4.display();
  flag5.display();
  flag6.display();
  flag7.display();
  flag8.display();
  flag9.display();
  
}
