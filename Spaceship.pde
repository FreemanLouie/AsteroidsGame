class Spaceship extends Floater  
{   
  Spaceship() {
    corners = 28;
    myColor = color(255);
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0; 
    myPointDirection = 0;
    xCorners = new int[corners];
    yCorners = new int[corners];        
    xCorners[0] = 0;  
    yCorners[0] = 4;
    xCorners[1] = 12; 
    yCorners[1] = 2;
    xCorners[2] = 15;  
    yCorners[2] = 1;
    xCorners[3] = 15; 
    yCorners[3] = -1;
    xCorners[4] = 12; 
    yCorners[4] = -2;
    xCorners[5] = 0;  
    yCorners[5] = -4;
    xCorners[6] = 0; 
    yCorners[6] = 12;
    xCorners[7] = 9; 
    yCorners[7] = -12;
    xCorners[8] = 0; 
    yCorners[8] = -12;
    xCorners[9] = 0; 
    yCorners[9] = -14;
    xCorners[10] = 9; 
    yCorners[10] = -14;
    xCorners[11] = 0;
    yCorners[11] = -14;
    xCorners[12] = -4; 
    yCorners[12] = -14;
    xCorners[13] = -7;
    yCorners[13] = -4;
    xCorners[14] = -11; 
    yCorners[14] = -4;
    xCorners[15] = -11; 
    yCorners[15] = -2;
    xCorners[16] = -7; 
    yCorners[16] = -2;
    xCorners[17] = -7; 
    yCorners[17] = 2;
    xCorners[18] = -11;
    yCorners[18] = 2;
    xCorners[19] = -11; 
    yCorners[19] = 4;
    xCorners[20] = -7;
    yCorners[20] = 4;
    xCorners[21] = -4; 
    yCorners[21] = 14;
    xCorners[22] = 0; 
    yCorners[22] = 14;
    xCorners[23] = 9; 
    yCorners[23] = 14;
    xCorners[24] = 0; 
    yCorners[24] = 14;
    xCorners[25] = 0; 
    yCorners[25] = 12;
    xCorners[26] = 9; 
    yCorners[26] = 12;
  }
  
  public void setX(int x) {
    myCenterX = x;
  }
  public int getX() {
    return (int)myCenterX;
  }
  public void setY(int y) {
    myCenterY = y;
  }
  public int getY() {
    return (int)myCenterY;
  }
  public void setDirectionX(double x) {
    myXspeed = x;
  }
  public double getDirectionX() {
    return myXspeed;
  }
  public void setDirectionY(double y) {
    myYspeed = y;
  }
  public double getDirectionY() {
    return myYspeed;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
