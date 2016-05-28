class Player extends Tile {
  
  Player(int newXposition, int newYposition, int newTileWidth, int newTileHeight){
    
   super(newXposition, newYposition, newTileWidth, newTileHeight);
    
  }
  
   void drawtile(){
   fill(255, 0, 0);
   rect(xPosition, yPosition, TileWidth, TileHeight);

  }
  
  int getPlayerXPosition(){  //  getter for the X position of the player
    return xPosition;
  }
  
  int getPlayerYPosition(){  //  getter for the X position of the player
    return yPosition;
  }
  
  // function for taking in values and passing them into the class
  
  void alterPosition(int newX, int newY){
    xPosition = newX;
    yPosition = newY;
  }


}


