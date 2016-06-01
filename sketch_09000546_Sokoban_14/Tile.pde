
class Tile {
  
  color tileFill;
  int xPosition;
  int yPosition;
  int TileWidth;
  int TileHeight;
  
  Tile(color newTileFill, int newXposition, int newYposition, int newTileWidth, int newTileHeight){
   
    tileFill = newTileFill;
    xPosition = newXposition;
    yPosition = newYposition;
    TileWidth = newTileWidth;
    TileHeight = newTileHeight;
  }  
  
  void drawtile(){
    
   fill(tileFill);
   rect(xPosition, yPosition, TileWidth, TileHeight);
  }
  

  
}
