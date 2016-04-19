//C13566933
//Gary O'Donoghue
//Arcade
PImage background = loadImage("http://i.imgur.com/uEgmd27.png");
PImage bird = loadImage("http://i.imgur.com/m7K0puc.png");
PImage wall = loadImage("http://i.imgur.com/xdOeQ8U.png");
PImage menu = loadImage("http://i.imgur.com/YhJjXhc.png");

int gameon =1;
int x =-200, y, speed=0;
int gamespeed = 3;
int birdjump = -12;
int score =0;

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
    
    if(x < -1200){
      x = 0;
    }//end if
    
    for (int i=0; i< 2; i++){ // i<2 because 2 walls
    imageMode(CENTER);
      image(wall, wallx[i], wally[i] - (wall.height/2+100));//adds a space in wall
      image(wall, wallx[i], wally[i] + (wall.height/2+100));//adds a space in wall
      if (wallx[i] < 0){
        wally[i] = (int)random(200, height-200);
        wallx[i] = width;
      }//end if
      
      //increment score
      if(wallx[i] == width/2){
        score++;
      }//end if score++
      
      //collision
      if(y > height || y < 0 || (abs(width/2-wallx[i])<25 && abs(y-wally[i])>100)){ 
        gameon=1;
      }
      
      
      wallx[i] -= gamespeed; //makes the wall move
    }//end for
    text("Score: " + score, width/2-15, 700);
  }//end if
  else{
    imageMode(CENTER);
    image(menu, width/2, height/2);
  }//end else
}//end draw
void mousePressed(){
  speed = birdjump;//bounces bird back up
  
  if(gameon == 1){
    //set starting bird pos
    x=0;
    y=height/2;
    
    //set starting wall pos
    wallx[0] = 600;
    wally[0] = 300;
    wallx[1] = 900;
    wally[1] = 200;
    
    //click to play
    gameon = 0;
  }//end if
}//end mousePressedbird();

