Spaceship rorator;
Star[] wow = new Star[150];
public void setup(){
 size(500,500);
 for( int i = 0; i < wow.length; i++){
   wow[i] = new Star();
}
 rorator = new Spaceship();
}
public void draw(){
background(0);
for( int i = 0; i < wow.length; i++){
  wow[i].show();
 }
  rorator.move();
  rorator.show();
}
public void keyPressed(){
  if( key == 'a'){
    rorator.turn(-10);}
    if( key == 'd'){
      rorator.turn(10);}
      if( key == 'w'){
       rorator.accelerate(1);}
  if(key == ' '){
    rorator.setXspeed(0);
    rorator.setYspeed(0);
    rorator.setDirection(Math.random()*500);
    rorator.setPosition(Math.random()*500, Math.random()*500);
  }
}
