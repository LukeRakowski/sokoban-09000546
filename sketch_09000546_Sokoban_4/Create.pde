
Crate crateOne = new Crate(color(0, 255, 0), 300, 50, 50, 50);

int cratePositionX = crateOne.getCrateXPosition(); 
int cratePositionY = crateOne.getCrateYPosition();

class Crate extends Tile {
  
  Crate(color newTileFill, int newXposition, int newYposition, int newTileWidth, int newTileHeight){
    
   super(newTileFill, newXposition, newYposition, newTileWidth, newTileHeight);
    
  }
  
 void drawtile(){
   
     fill(tileFill);
     rect(xPosition, yPosition, TileWidth, TileHeight);   
  
  }
  
  // going to take the x and y coordinate of the player to check if they are next to the crate
  
  void move(int playerX, int playerY){
    
    //  if the player is to the left of the crate, push it to the left
    
    if(  (playerX == xPosition) && (playerY == yPosition)){
     
     println("Same X position "+ millis()); 
      
      xPosition = xPosition + 50;
      
    }
    
    
    
    
    
    
    
  /*
    xPosition = boxNewX;
    yPosition = boxNewY;
  */

  
    
  }
  
  
  int getCrateXPosition(){  //  getter for the X position of the crate
  
    return xPosition;
  }
  
  int getCrateYPosition(){  //  getter for the Y position of the crate
  
    return yPosition;
  }

}
