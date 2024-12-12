class Bullet extends Floater
{
  Bullet(Spaceship theShip)
  {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myColor = 255;
    myXspeed = bob.getDirectionX(); 
    myYspeed = bob.getDirectionY(); 
    myPointDirection = bob.getPointDirection();
    accelerate(6);
  }
  public void show ()  //Draws the floater at the current position  
  {             
    fill(0,0,myColor);   
    noStroke();  
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }   

  public int getX() {
    return (int)myCenterX;
  }

  public int getY() {
    return (int)myCenterY;
  }
  
}
