public Spaceship joe = new Spaceship();
public Star[] sky = new Star[400];


public void setup() 
{
  size(600,600);
  for (int i= 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  
   
  background(0);
}
 


public void draw() 
{
	background(0);
	joe.move();
  	joe.show();
}
public void keyPressed()
{
	if (key == 'd')
	{
		joe.turn(5);
	}
	if (key == 'a')
	{
		joe.turn(-5);
	}
	if (key == 'w')
	{
		joe.accelerate(0.5);
	}
	if (key == 's')
	{
		joe.accelerate(-0.5);
	}
	if (key == 'e') //hyperspace
	{
		joe.setPointDirection((int)(Math.random()*360));
		joe.setDirectionX(0);
		joe.setDirectionY(0);
		joe.setX((int)(Math.random()*600));
		joe.setY((int)(Math.random()*600));

	}
}

