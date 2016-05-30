
class Wall extends Tile {
  
  Wall(color newTileFill, int newXposition, int newYposition, int newTileWidth, int newTileHeight){
    
   super(newTileFill, newXposition, newYposition, newTileWidth, newTileHeight);
    
  }
  
  void drawtile(){
      
     fill(tileFill);
     rect(xPosition, yPosition, TileWidth, TileHeight);
  }
  
// FUNCTION FOR CHECKING WHETHER THE PLAYER IS NEXT TO THE WALL OR NOT  
  
  void stopplayer(int playerX, int playerY){
    
         
  }

// FUNCTION FOR CHECKING WHETHER CRATES ARE PROPPED UP AGAINST WALLS  

  void stopcrate(){
    
    
  }


}
