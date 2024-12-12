Spaceship bob = new Spaceship();
Star[] sue = new Star[100];
ArrayList <Bullet> bull = new ArrayList <Bullet>();
ArrayList <Asteroid> arrList = new ArrayList <Asteroid>();
boolean isAccelerating = false;
boolean isRotatingLeft = false;
boolean isRotatingRight = false;
boolean isHyperspace = false;
int countdown = 50;

void setup()
{
  size(500,500);
  background(0);
  for(int i = 0; i < sue.length; i++)
  { 
    sue[i] = new Star();
  }
  for (int i = 0; i < 20; i++)
  {
    arrList.add(new Asteroid());
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
  for(int i = 0; i < bull.size(); i++)
  { 
    bull.get(i).show();
    bull.get(i).move();
  }
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
    countdown = 50;
    }
  }
 for (int i = 0; i < arrList.size(); i++)
 { 
   arrList.get(i).show();
   arrList.get(i).move();
   float d = dist(arrList.get(i).getX(), arrList.get(i).getY(), bob.getX(), bob.getY());
   if (d<40){
     arrList.remove(i);
    i--;
    arrList.add(new Asteroid());
   }
 }
 for (int i = 0; i < arrList.size(); i++)
 { 
   for (int j = 0; j < bull.size(); j++)
   {
   float a = dist(arrList.get(i).getX(), arrList.get(i).getY(), bull.get(j).getX(), bull.get(j).getY());
     if (a<40){
       arrList.remove(i);
       bull.remove(j);
       arrList.add(new Asteroid());
     }
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
  if(key == 'q'){
    isHyperspace = true;
  }   
  if(key == 'e'){
    bull.add(new Bullet(bob));  
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
  if(key == 'q'){
    isHyperspace = false;
    countdown = 100;
  }
}
