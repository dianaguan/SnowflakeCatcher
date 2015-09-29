Snowflake [] snow;
void setup()
{
  //your code here
  background(0);
  size(800,500);
  snow  = new Snowflake[800];
  for (int i=0; i<snow.length; i++)
  {
    snow[i] = new Snowflake();
  }
}
void draw()
{
    //your code here

    for (int i = 0; i<snow.length; i++)
    {
      snow[i].erase();
      snow[i].lookDown();
      snow[i].move();
      snow[i].wrap();
      snow[i].show();
    }
}
void mouseDragged()
{
  //your code here
  noStroke();
  fill(250,46,120);
  ellipse(mouseX, mouseY, 5,5);
}

class Snowflake
{
  //class member variable declarations
  int x, y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random()*800);
    y = (int)(Math.random()*500);
    isMoving = true;
  }
  void show()
  {
    //your code here
    noStroke();
    fill(255);
    ellipse(x,y,5,5);
    
  }
  void lookDown()
  {
    //your code here
    if(y>0 && y<503)
    {
      if (get(x,y+4) != color(0))
        {
          isMoving = false;
        }
        else 
        {
         isMoving = true;   
        }  
      }
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(x,y,8,8);
  }
  void move()
  {
    //your code here
    if(isMoving == true)
    {
      y++;
    }
  }
  void wrap()
  {
    //your code here
    if(y>495)
    {
      y = 0;
      x = (int)(Math.random()*801);
    }
  }
}




