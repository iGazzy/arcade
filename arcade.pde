//C13566933
//Gary O'Donoghue
//Arcade
PImage background = loadImage("http://i.imgur.com/uEgmd27.png");
PImage bird = loadImage("http://i.imgur.com/m7K0puc.png");
PImage wall = loadImage("http://i.imgur.com/xdOeQ8U.png");
PImage menu = loadImage("http://i.imgur.com/YhJjXhc.png");

int gameon =0;
int x =-200, y, speed=0;
int gamespeed = 6;
int birdjump = -20;

//walls
int[] wallx = new int[2];
int[] wally = new int[2];

void setup(){
  size(600,800);
}//end setup

void draw(){  
  if (gameon == 0){
    imageMode(CORNER);
    image(background,x,0);
    
    image(bird, width/2, y);
    x-=gamespeed;//makes background move
    speed +=1;//gravity for bird to fall down
    y+=speed;//bird is affected by the gravity here
    
    for (int i=0; i< 2; i++){ // i<2 because 2 walls
      image(wall, wallx[i], wally[i] - (wall.height/2+100));//adds a space in wall
      image(wall, wallx[i], wally[i] + (wall.height/2+100));//adds a space in wall
      if (wallx[i] < 0){
        wally[i] = (int)random(200, height-200);
        wallx[i] = width;
      }//end if
      wallx[i] -= gamespeed; //makes the wall move
    }//end for
  }//end if
  else{
    imageMode(CENTER);
    image(menu, width/2, height/2);
  }//end else
}//end draw
void mousePressed(){
  speed = birdjump;//bounces bird back up
}//end mousePressed
