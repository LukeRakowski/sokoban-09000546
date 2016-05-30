// create player object;

Player playerOne = new Player(color(255, 0, 0),50, 50, 50, 50);

// assign the gotten player x and y position 

int playerPositionX = playerOne.getPlayerXPosition(); 
int playerPositionY = playerOne.getPlayerYPosition();


class Player extends Tile {
  
  Player(color newTileFill, int newXposition, int newYposition, int newTileWidth, int newTileHeight){
   super(newTileFill, newXposition, newYposition, newTileWidth, newTileHeight);
    
  }
  
  void drawtile(){
     
     fill(tileFill);
     rect(xPosition, yPosition, TileWidth, TileHeight);
  }
  
  int getPlayerXPosition(){  //  getter for the X position of the player
  
    return xPosition;
  }
  
  int getPlayerYPosition(){  //  getter for the Y position of the player
  
    return yPosition;
  }
  
  // function for taking in values and passing them into the class, a setter technically
  
  void alterPosition(int newX, int newY){
    xPosition = newX;
    yPosition = newY;
  }


}


