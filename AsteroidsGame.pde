Spaceship rorator;
ArrayList<Asteroid> cool;
Star[] wow = new Star[150];
public void setup(){
 size(500,500);
 for( int i = 0; i < wow.length; i++){
   wow[i] = new Star();
}
 rorator = new Spaceship();
  cool = new ArrayList<Asteroid>();
  for(int nI = 0; nI < 15; nI++){
    cool.add(new Asteroid());
  }
}
public void draw(){
background(0);
for( int i = 0; i < wow.length; i++){
  wow[i].show();
 }
  rorator.move();
  rorator.show();
for( int i = cool.size()-1; i >=0 ; i --){
 Asteroid a = cool.get(i);
 a.show();
 a.move();
 
 if(dist((float)a.getCenterX(),(float)a.getCenterY(),(float)rorator.getX(),(float) rorator.getY()) <20){
  cool.remove(i);
 }
}
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
