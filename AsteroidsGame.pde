Spaceship rorator;
ArrayList<Asteroid> cool;
ArrayList<Bullet> shots = new ArrayList < Bullet>();
Star[] wow = new Star[150];
int score = 0;
boolean gameOver = false;
//Setup function
public void setup(){
 size(500,500);
 for( int i = 0; i < wow.length; i++){
   wow[i] = new Star();
}
 rorator = new Spaceship();
  cool = new ArrayList<Asteroid>();
  for(int nI = 0; nI < 40; nI++){
    cool.add(new Asteroid());
  }
}

//Draw Function 
public void draw(){
background(0);
for( int j = 0; j < shots.size(); j++){
  shots.get(j).move();
  shots.get(j).show();}
  for( int i = cool.size()-1; i>=0; i--){
 for( int k = shots.size()-1; k >=0; k--){
float d = dist((float)shots.get(k).getX(),(float) shots.get(k).getY(),(float) cool.get(i).getCenterX(),(float) cool.get(i).getCenterY());
 if( d < 20){
 cool.remove(i);
 shots.remove(k);
 score+=10;
 k = -1;
 }
  }
  }
 if(cool.size() ==0)
gameOver = true;

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
fill(0,255,0);
textSize(20);
text( "Score:" + score,20,30);
if( gameOver){
fill(255);
textSize(40);
textAlign( 250,250);
fill(0,255,0);
text( "Game Over",150,100);
}
}

//Function 
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
   if ( key == 'b'){
    shots.add(new Bullet(rorator));}
}
