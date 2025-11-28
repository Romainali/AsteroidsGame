class Asteroid extends Floater{
 private double rotSpeed;
 public Asteroid(){
  rotSpeed = Math.random()*6 - 3;
  myCenterX =  (Math.random()*500);
  myCenterY =   (Math.random()*500);
  myXspeed = Math.random()*2 -1;
  myYspeed = Math.random()*2-1;
  myPointDirection = Math.random()*360;
  myColor = color(255);
 corners = 12;
  xCorners = new int[corners];
  yCorners = new int[corners];
  
  int baseSize = 15;

    for (int i = 0; i < corners; i++) {
      double angle = i * (360 / corners);           
      double dist = baseSize * ( Math.random() * 0.4 +0.8 ); 
      xCorners[i] = (int)(dist *Math.cos(Math.PI/180 * angle));
      yCorners[i] = (int)(dist*Math.sin(Math.PI/180* angle)); 
    }
 
 }
  public void move(){
    turn(rotSpeed);
   super.move();
   if( myCenterX > 501){
     myCenterX = 0;
   if( myCenterX < 0) {
     myCenterX = 501;}
   if(myCenterY > 501) {
     myCenterY = 0;}
   if( myCenterY < 0) {
     myCenterY = 501;}

   }
  }
 public double getCenterX(){ return myCenterX; }
 public double getCenterY(){ return myCenterY; }
}
