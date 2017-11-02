public Spaceship joe = new Spaceship();
public void setup() 
{
  size(600,600);
  background(0);

}
public void draw() 
{
	joe.move();
  	joe.show();
}
public void keyPressed()
{
	if (key == 'b')
	{
		joe.turn(5);
	}
}

