//C13566933
//Gary O'Donoghue
//Arcade
PImage background = loadImage("http://i.imgur.com/uEgmd27.png");
PImage bird = loadImage("http://i.imgur.com/m7K0puc.png");
PImage wall = loadImage("http://i.imgur.com/xdOeQ8U.png");
PImage menu = loadImage("http://i.imgur.com/YhJjXhc.png");

int gameon =0;
int x =-200, y, speed=0;

void setup(){
  size(600,800);
}//end setup

void draw(){  
  if (gameon == 0){
    imageMode(CORNER);
    image(background,x,0);
    
    image(bird, width/2, y);
    x-=6;//makes background move
    speed +=1;//gravity
    y+=speed;//birds gravity
  }//end if
  else{
    imageMode(CENTER);
    image(menu, width/2, height/2);
  }//end else
}//end draw
