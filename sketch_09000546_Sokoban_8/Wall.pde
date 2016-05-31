
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


// FUNCTION FOR CHECKING WHETHER CRATES ARE PROPPED UP AGAINST WALLS  

  void stopcrate(){
    
    
  }

// GETTING THE X AND Y POSITION OF THE WALL/S  
  
  int getWallXPosition(){  
  
    return xPosition;
  }

  
  int getWallYPosition(){ //  getter for the Y position of the cratetion(){ 
  
    return yPosition;
  }


}
