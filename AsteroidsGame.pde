Spaceship bob = new Spaceship();
Star[] sue = new Star[100];
boolean isAccelerating = false;
boolean isRotatingLeft = false;
boolean isRotatingRight = false;
boolean isHyperspace = false;
int countdown = 100;

void setup()
{
  size(500,500);
  background(0);
  for(int i = 0; i < sue.length; i++)
  { 
    sue[i] = new Star();
  }
}

void draw()
{
  background(0);
  for(int i = 0; i < sue.length; i++)
  { 
    sue[i].show();
  }
  bob.show(); 
  bob.move();
  if (isAccelerating == true)
    bob.accelerate(.1);
  if (isRotatingLeft == true)
    bob.turn(-5);
  if (isRotatingRight == true)
    bob.turn(5);
  if (isHyperspace == true)
  {
    countdown -= 1;
    
    if(countdown <= 0)
    {
    bob.setX((int)(Math.random() * width));
    bob.setY((int)(Math.random() * height));
    bob.setPointDirection((int)(Math.random() * 360));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    countdown = 100;
    }
  }
}

public void keyPressed()
{
  if(key == 'w'){
    isAccelerating = true;
  }
  if(key == 'a'){
    isRotatingLeft = true;
  }
  if(key == 'd'){
    isRotatingRight = true;
  }  
  if(key == 'e'){
    isHyperspace = true;
  }  
}

public void keyReleased()
{
  if(key == 'w'){
    isAccelerating = false;
  }
  if(key == 'a'){
    isRotatingLeft = false;
  }
  if(key == 'd'){
    isRotatingRight = false;
  }  
  if(key == 'e'){
    isHyperspace = false;
    countdown = 100;
  }  
}
