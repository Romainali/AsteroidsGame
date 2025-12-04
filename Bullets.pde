class Bullet extends Floater{
 public Bullet (Spaceship rorator){
   myCenterX = rorator.getX();
   myCenterY = rorator.getY();
   myXspeed = rorator.getXspeed();
   myYspeed = rorator.getYspeed();
   myPointDirection = rorator.getPointDirection();
   accelerate(6.0);
 }
public void show (){
  fill( 225, 165, 0);
  ellipse((float)myCenterX, (float) myCenterY, 5,5);
 }
 public void move(){
 myCenterX += myXspeed;
 myCenterY += myYspeed; 
 }
 public double getX(){ return myCenterX;}
 public double getY(){ return myCenterY;}
}
