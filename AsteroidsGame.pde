public Spaceship joe = new Spaceship();
public Star[] sky = new Star[100]; ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
double dist1;

public void setup() 
{
  size(600,600);
  for (int i= 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  for (int i=0; i< 20; i++){
      rocks.add(new Asteroid());
   }
  
}
 

public void draw() 
{
	background(0);
  for (int i = 0; i < sky.length; i++) {
    sky[i].show();
  }
  joe.show();
  joe.move();
  stroke(0);
  for (Asteroid ast : rocks) 
  {
    ast.show();
    ast.move();
    dist1 = dist(ast.getX(), ast.getY(), joe.getX(), joe.getY());
  }
}
public void keyPressed()
{
	if (key == 'd')
	{
		joe.turn(20);
	}
	if (key == 'a')
	{
		joe.turn(-20);
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