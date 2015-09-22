void setup()
{
  //your code here
  size(800,500);
}
void draw()
{
  //your code here
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
    fill(0);
    ellipse(x,y,7,7);
  }
  void lookDown()
  {
    //your code here
  }
  void erase()
  {
    //your code here
  }
  void move()
  {
    //your code here
    if(isMovivng == true)
    {
      y++;
    }
  void wrap()
  {
    //your code here
  }
}



