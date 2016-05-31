
class Wall extends Tile {
  
  Wall(color newTileFill, int newXposition, int newYposition, int newTileWidth, int newTileHeight){
    
   super(newTileFill, newXposition, newYposition, newTileWidth, newTileHeight);
    
  }
  
  void drawtile(){
      
     fill(tileFill);
     rect(xPosition, yPosition, TileWidth, TileHeight);
  }
  
// FUNCTION FOR CHECKING WHETHER THE PLAYER IS NEXT TO THE WALL OR NOT  
  
  void restrictplayer(int playerX, int playerY){
    
// CHECKING IF PLAYER IS BENEATH A WALL        
    
    boolean isplayerbeneathwall = false;

    if(  (playerY == (yPosition + 50))  &&  (  (playerX) == (xPosition)  )){
  
      println("Y POS COLLISION " + millis());  
      
      isplayerbeneathwall = true;
      println(isplayerbeneathwall);
    }
 
    
         
  }
 

// FUNCTION FOR CHECKING WHETHER CRATES ARE PROPPED UP AGAINST WALLS  

  void stopcrate(){
    
    
  }


}
