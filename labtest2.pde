//C22307573 Rachel Appleyard
IntList colourH;
IntList colourS;
IntList colourB;
IntList xCords;
IntList yCords;
IntList flagWidth;
IntList flagHeight;
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
  
  flagWidth = new IntList();
   for (int i = 0; i < 10; i++)
  {
    int index = int(random(100,600));
    flagWidth.append(index);
  }
  
  flagHeight = new IntList();
   for (int i = 0; i < 10; i++)
  {
    int index = int(random(10,100));
    flagHeight.append(index);
  }
  
  flag1 = new Flag(xCords.get(0), yCords.get(0), flagWidth.get(0), flagHeight.get(0));  
  flag2 = new Flag(xCords.get(1), yCords.get(1), flagWidth.get(1), flagHeight.get(1));  
  flag3 = new Flag(xCords.get(2), yCords.get(2), flagWidth.get(2), flagHeight.get(2));  
  flag4 = new Flag(xCords.get(3), yCords.get(3), flagWidth.get(3), flagHeight.get(3));  
  flag5 = new Flag(xCords.get(4), yCords.get(4), flagWidth.get(4), flagHeight.get(4));  
  //flag6 = new Flag(xCords.get(5), yCords.get(5), flagWidth.get(5), flagHeight.get(5));  
  //flag7 = new Flag(xCords.get(6), yCords.get(6), flagWidth.get(6), flagHeight.get(6));  
  //flag8 = new Flag(xCords.get(7), yCords.get(7), flagWidth.get(7), flagHeight.get(7));
  //flag9 = new Flag(xCords.get(8), yCords.get(8), flagWidth.get(8), flagHeight.get(8));  
  
}
class Flag
{ 
  int x, y, w, h;
  int c=10;
  int margin = h/3;
  int margin2 =15;
  int k = 1;
  
  Flag(int xpos, int ypos, int width1, int height1)
  {
    x = xpos;
    y = ypos;
    w = width1;
    h = height1;
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
      triangle(x-i*(h/2),y+(h*3)-margin2, x-w/2, y-margin+i*(h/2), x-w/2,y+(h*6)-margin-i*(h/2));
    }
    noFill();
    strokeWeight(5);
    stroke(220,255,255);
    circle(x-w/3,y+h+h+h/2,h*1);
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
  //flag6.display();
  //flag7.display();
  //flag8.display();
  //flag9.display();
  
}
