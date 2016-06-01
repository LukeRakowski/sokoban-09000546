class StorageLocation extends Tile {
  
  StorageLocation(color newTileFill, int newXposition, int newYposition, int newTileWidth, int newTileHeight){
    
   super(newTileFill, newXposition, newYposition, newTileWidth, newTileHeight);
    
  }
  
   void drawtile(){
    
   fill(tileFill);
   rect(xPosition, yPosition, TileWidth, TileHeight);
   
  }
  
  void changeCrateColour(){
    
   
   
    
  }
  
  
  int getStorageXPosition(){  
  
    return xPosition;
  }
  
  int getStorageYPosition(){ 
  
    return yPosition;
  }
    
  
}


