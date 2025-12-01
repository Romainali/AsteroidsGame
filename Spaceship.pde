class Spaceship extends Floater{
  public Spaceship(){
    myColor = 172;
    myCenterX = 250;
    myCenterY = 250;
    myXspeed =0;
    myYspeed = 0;
    myPointDirection = 0;
    corners = 15;
    xCorners = new int [corners];
    yCorners = new int [corners];
int s =15;
  xCorners[0] = s*2; yCorners[0] =0;
  xCorners[1] = s;   yCorners[1] = -s;
  xCorners[2] = 0;  yCorners[2] = -s/2;
  xCorners[3] = -s*2;  yCorners[3] = -s*2;
 xCorners[4] = -s*2; yCorners[4] = -s;
 xCorners[5] = -s; yCorners[5] = -s/2;
 xCorners[6] = -s; yCorners[6] = s/2;
 xCorners[7] = -s*2; yCorners[7] = s;
 xCorners[8] = -s*2; yCorners[8] = s*2;
 xCorners[9] = 0; yCorners[9] = s/2;
  xCorners[10] = s; yCorners[10] = s;
   xCorners[11] = s*2; yCorners[11] = 0;   

  }
public void setDirection( double d){myPointDirection = d;}
public void setXspeed(double x){ myXspeed = x;}
public void setYspeed( double y) { myYspeed = y;}
public void setPosition( double x, double y){
  myCenterX =x; 
 myCenterY = y ;
 }
public double getX(){return myCenterX;}
public double getY(){return myCenterY;}

}
