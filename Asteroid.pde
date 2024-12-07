class Asteroid extends Floater
{
double rotSpeed; //randomly + or -
  public Asteroid()
  {
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myColor = 255;
    corners = 10;
    xCorners = new int[]{-25, -10, 0, 15, 30, 20, 5, -5, -20, -30};
    yCorners = new int[]{-20, -35, -30, -25, -5, 10, 25, 30, 20, 5};
    myPointDirection = 0;
    myXspeed = (int)(Math.random()*3)-1;
    myYspeed = (int)(Math.random()*3)-1;
    rotSpeed = (int)(Math.random()*10)-5;
   }
  public int getX()
  {
    return (int)myCenterX;
  }
  public int getY()
  {
    return (int)myCenterY;
  }
  
  public void move(){
  super.move();
  myPointDirection += rotSpeed; 
  }
}
