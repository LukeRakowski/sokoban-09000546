
ArrayList<Wall> listofwalls;

void setup(){

// EXTRA PIXELS FOR PIXEL PERFECT ACCURACY IN DISPLAY 
  
size(900, 501);

// NEW WALL ARRAYLIST DECLARATION

listofwalls = new ArrayList<Wall>();
  
drawStaticTiles();

  
}

void draw(){
  
  
// SET THE BACKGROUND COLOUR SO THAT THE PICTURE CAN UPDATE WITH EACH REFRESH 
   
   background(255); 
   
// DRAW THE TILES FROM THE FUNCTION
   
  drawTiles();
  
// DRAW THE DEBUG SCREEN, SET THE SCREENSIZE TO (501, 501) TO HIDE
  
  debug();

}   
  
void keyPressed() {

// INITIALISE KEYPRESS LISTENING 
  
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
   
// MOVE THE PLAYER BASED WHAT VALUES ARE CHANGE THROUGH KEY PRESSES AND ALSO ALTER 
// THE POSITION OF THE PLAYER BY PASSING VALUES INTO THE PLAYER SUB CLASS
 
  playerOne.alterPosition(int(playerPositionX), int(playerPositionY)); 
  
  }  
}



