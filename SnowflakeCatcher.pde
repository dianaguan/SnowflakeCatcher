Snowflake [] snow;
void setup()
{
  //your code here
  background(0);
  size(800,500);
  snow  = new Snowflake[20];
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
    fill(255);
    ellipse(x,y,5,5);
    
  }
  void lookDown()
  {
    //your code here
    // if(y>0 && y<500 && (get(y+1) != Color(0)))
    // {
    //   isMoving = true;
    // }
    // else {
    //  isMoving = false;   
    // }  
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(x,y,7,7);
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
    if(y>500)
    {
      y = 0;
      x = (int)(Math.random()*801);
    }
  }
}




