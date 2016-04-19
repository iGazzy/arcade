//C13566933
//Gary O'Donoghue
//Arcade
PImage background = loadImage("http://i.imgur.com/uEgmd27.png");
PImage bird = loadImage("http://i.imgur.com/m7K0puc.png");
PImage wall = loadImage("http://i.imgur.com/xdOeQ8U.png");
PImage menu = loadImage("http://i.imgur.com/YhJjXhc.png");

void setup(){
  size(600,800);
  imageMode(CENTER);
  image(menu, width/2, height/2);
}
