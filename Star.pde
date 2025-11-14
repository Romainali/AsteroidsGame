class Star{
 private int myX, myY;
 private color myC;
 public Star(){
   myX = (int)(Math.random()*500);
   myY = (int)(Math.random()*500);
     int r = (int)(Math.random()*256);
    int g = (int) (Math.random()*256);
    int b = (int) (Math.random()*256);
    myC = color(r,g,b);
 }
 public void show(){
  
   fill(myC);
   ellipse(myX,myY,3,3);
   noStroke();
 }
}
