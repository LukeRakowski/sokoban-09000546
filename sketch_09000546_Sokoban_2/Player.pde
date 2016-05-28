class Player extends Tile {
  
  Player(int newXposition, int newYposition, int newTileWidth, int newTileHeight){
    
   super(newXposition, newYposition, newTileWidth, newTileHeight);
    
  }
  
   void drawtile(){
  
   fill(255, 0, 0);
   rect(xPosition, yPosition, TileWidth, TileHeight);
   println(xPosition);
   println(yPosition);   
  }
  
  void move(int newX, int newY){
    
    xPosition = newX;
    yPosition = newY;
  }
  
  


}


