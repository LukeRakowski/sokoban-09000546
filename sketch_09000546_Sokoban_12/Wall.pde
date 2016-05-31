
boolean isplayerBeneathwall;
boolean isplayerAbovewall;
boolean isplayerRightofwall;
boolean isplayerLeftofwall;


class Wall extends Tile {
  
  Wall(color newTileFill, int newXposition, int newYposition, int newTileWidth, int newTileHeight){
    
   super(newTileFill, newXposition, newYposition, newTileWidth, newTileHeight);
    
  }
  
  void drawtile(){
      
     fill(tileFill);
     rect(xPosition, yPosition, TileWidth, TileHeight);
  }
  
  
// FUNCTION FOR CHECKING WHETHER THE PLAYER IS TRING TO GO OVER A WALL

// RESTRICT THE PLAYER FROM MOVING UPWARDS THROUGH THE WALL, ESSENTIALLY OVERRIDING THE MOVEMENT INITIALLISED BY keyPressed

  void checkplayerandwallpositions(int playerX, int playerY){
    
    if(  (playerX == xPosition) && (playerY == yPosition) && (keyCode == UP)   ){  // say 50, 50

    playerPositionY = playerPositionY + 50;
          
    }
         
// CHECKING IF PLAYER IS ABOVE THE WALL 

     if(  (playerY == yPosition)  &&   (playerX == xPosition)   && (keyCode == DOWN)){
  
     playerPositionY = playerPositionY - 50;
      
    }  
 
// CHECKING IF THE PLAYER IS TO THE RIGHT OF THE WALL      
    
    if(  (playerY == yPosition)  &&   (playerX == xPosition) && (keyCode == LEFT) ){

      playerPositionX = playerPositionX + 50;
    } 

// CHECKING IF THE PLAYER IS TO THE LEFT OF THE WALL      
    
    if(  (playerY == yPosition)  &&   (playerX == xPosition) && (keyCode == RIGHT) ){

    
      playerPositionX = playerPositionX - 50;
    } 
    
// SEND THE OVERRIDDEN POSITIONS TO THE PLAYER    
 
      playerOne.alterPosition(int(playerPositionX), int(playerPositionY));  
    
    
  }



void stopcrate(int playerX, int playerY){

// GET ALL THE CRATES IN THE CRATE ARRAY
  
    for(int i = 0; i < listofcrates.size(); i = i + 1){
     
    Crate crate = listofcrates.get(i);  
  
    int crateXpos = crate.getCrateXPosition();
    int crateYpos = crate.getCrateYPosition(); 
    
    

    
// CHECKING TO SEE IF THE CRATE IS GOING THROUGH THE LEFT WALL    
  
  if((crateXpos == xPosition) && (crateYpos == yPosition) && (keyCode == LEFT)){

// TESTING CLAUSE FOR WHEN THE CRATE IS PUSHED INTO THE LEFT WALL 

  int newXpos = crateXpos + 50;
  int newYpos = crateYpos;    

// STOP THE CRATE FROM MOVING FURTHER LEFT    
      
  crate.alterPosition(int(newXpos), int(newYpos));

// STOP THE PLAYER FROM ADVANCING OVER THE CRATE

  playerPositionX = playerPositionX + 50;
    
  playerOne.alterPosition(int(playerPositionX), int(playerPositionY));
    
  }
  
// CHECKING TO SEE IF THE CRATE IS GOING THROUGH THE RIGHT WALL    
  
  if((crateXpos == xPosition) && (crateYpos == yPosition) && (keyCode == RIGHT)){

// TESTING CLAUSE FOR WHEN THE CRATE IS PUSHED INTO THE LEFT WALL 

  int newXpos = crateXpos - 50;
  int newYpos = crateYpos;    

// STOP THE CRATE FROM MOVING FURTHER RIGHT   
      
  crate.alterPosition(int(newXpos), int(newYpos));
    
// STOP THE PLAYER FROM ADVANCING OVER THE CRATE

  playerPositionX = playerPositionX - 50;
    
  playerOne.alterPosition(int(playerPositionX), int(playerPositionY));
    
  }
  
// CHECKING TO SEE IF THE CRATE IS GOING THROUGH THE TOP WALL    
  
  if((crateXpos == xPosition) && (crateYpos == yPosition) && (keyCode == UP)){

// TESTING CLAUSE FOR WHEN THE CRATE IS PUSHED INTO THE TOP WALL 

  int newXpos = crateXpos;
  int newYpos = crateYpos + 50;    

// STOP THE CRATE FROM MOVING FURTHER UP    
      
  crate.alterPosition(int(newXpos), int(newYpos));

// STOP THE PLAYER FROM ADVANCING OVER THE CRATE

  playerPositionY = playerPositionY + 50;
    
  playerOne.alterPosition(int(playerPositionX), int(playerPositionY));
    
  }
  
  if((crateXpos == xPosition) && (crateYpos == yPosition) && (keyCode == DOWN)){

// TESTING CLAUSE FOR WHEN THE CRATE IS PUSHED INTO THE BOTTOM WALL 

  int newXpos = crateXpos + 0;
  int newYpos = crateYpos - 50;    

// STOP THE CRATE FROM MOVING FURTHER DOWN    
      
  crate.alterPosition(int(newXpos), int(newYpos));

// STOP THE PLAYER FROM ADVANCING OVER THE CRATE

  playerPositionY = playerPositionY - 50;
    
  playerOne.alterPosition(int(playerPositionX), int(playerPositionY));
    
  }  
  
  
  } 
  
}







// GETTING THE X AND Y POSITION OF THE WALL/S  
  
  int getWallXPosition(){  
  
    return xPosition;
  }

  int getWallYPosition(){ 
  
    return yPosition;
  }


}
