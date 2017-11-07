class Asteroid extends Floater
{
	protected int spin;
  public Asteroid(){
      corners = 6;  //the number of corners, a triangular floater has 3
      int[] allX = {-12,-8,8,12,8,-8};
      int[] allY = {0,8,8,0,-8,-8};
      xCorners  = allX;
      yCorners = allY;
      myColor = #CFCFAD;
      myCenterX = ((int)(Math.random()*900));
      myCenterY = ((int)(Math.random()*900)); 
      myDirectionX = 0;
      myDirectionY = 0; //holds x and y coordinates of the vector for direction of travel   
      myPointDirection = ((Math.random()*10)-10); 
      myCenterY = ((int)(Math.random()*900));
      myDirectionX = ((int)(Math.random()*2)-2);
      myDirectionY = ((int)(Math.random()*2-2)); //holds x and y coordinates of the vector for direction of travel
      myPointDirection = ((Math.random()*10)-10);
      spin = ((int)(Math.random()*9)-2);
  }
  public void setX(int x){
      myCenterX = x;
   }
   public int getX(){
    return (int)myCenterX;
   }
   public void setY(int y)
   {
      myCenterY = y;
   }
    public int getY(){
      return (int)myCenterY;
    }
   public void setDirectionX(double x){
      myDirectionX = x;
   }
   public double getDirectionX(){
      return (double)myDirectionX;
   }
   public void setDirectionY(double y)
   {
     myDirectionY = y;
   }
   public double getDirectionY()
   {
      return (double)myDirectionY;
   }
  public void setPointDirection(int degrees)
  {
    myPointDirection = degrees;
  }
  public double getPointDirection()
  {
    return (double)myPointDirection;
  }
}