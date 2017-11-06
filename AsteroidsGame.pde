public Spaceship joe = new Spaceship();
public Star[] sky = new Star[400];

public void setup() 
{
  size(600,600);
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
		joe.accelerate(0.05);
	}
}

