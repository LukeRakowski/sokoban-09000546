// this version of the program will tackle some player movement

Player playerOne = new Player(50, 50, 50, 50);

// get player X and Y position

int playerPositionX = playerOne.getPlayerXPosition(); 
int playerPositionY = playerOne.getPlayerYPosition();

void setup(){
 
  size(900, 500);
  
}

void draw(){
  
   // set the background colour so that screen gets refreshed with each update 
   
   background(255); 
   
   // draw the player
   
   playerOne.drawtile();
 



  // draw the debug screen
  
  debug();

}   
  
void keyPressed() {

  // initiallise listening for key presses for UP DOWN LEFT RIGHT keys on the keyboard
  
  if (key == CODED) {
    
    if (keyCode == DOWN){

      playerPositionY = playerPositionY + 50;
 
   }

    if (keyCode == UP){

      playerPositionY = playerPositionY - 50;
 
   } 

    if (keyCode == LEFT){

      playerPositionX = playerPositionX - 50;
 
   } 
  
    if (keyCode == RIGHT){

      playerPositionX = playerPositionX + 50;
 
   } 
   
  // move the player based what values are change through key presses and also alter 
  // the position of the player by passing values into the player sub class
 
  playerOne.alterPosition(int(playerPositionX), int(playerPositionY)); 
  
  }
}



