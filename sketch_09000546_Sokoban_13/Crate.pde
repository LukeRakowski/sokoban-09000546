
class Crate extends Tile{
  
  Crate(color newTileFill, int newXposition, int newYposition, int newTileWidth, int newTileHeight){
   super(newTileFill, newXposition, newYposition, newTileWidth, newTileHeight);
    
  }
  
 void drawtile(){
   
     fill(tileFill);
     rect(xPosition, yPosition, TileWidth, TileHeight);   
  
  }
  

  

// move FUNCTION TAKES IN PLAYER X AND Y PARAMETERS

  void highlight(){
    
  for(int i = 0; i < listofstoragelocations.size(); i = i + 1){
   
    StorageLocation storage = listofstoragelocations.get(i);  
    
// GET ALL OF THE STORAGE LOCATIONS   
    
    int storageXpos = storage.getStorageXPosition();
    int storageYpos = storage.getStorageYPosition();

    if(  (xPosition == storageXpos)  &&  (yPosition == storageYpos)  ){
      
      println("A CRATE HAS BEEN PLACED IN STORAGE");
      
        for(int a = 0; a < listofcrates.size(); a = a + 1){
   
          Crate crate = listofcrates.get(a);  
          
          // CHANGE THE COLOUR OF THE CRATE
            
            println("THIS CONDITION IS TRUE");
          
          } 
      
     
    } 
    

  }     
    
    
    
  }
    

  void move(int playerX, int playerY){

// LOGIC CHECKING IF THE PLAYERS


// POSITION EQUAL TO THE CRATE'S, 
// TECHNICALLY A POSITION SWAP IS HAPPENING WHERE THE PLAYER TAKES THE CRATE'S
// POSITION AS IT IS MOVED AWAY

    boolean isplayergoingovercrate = false;
    
// CHECK IF PLAYER IS NEXT TO THE CRATE
   
    if(  ( playerX == xPosition ) && ( playerY == yPosition ) ) {
      
       isplayergoingovercrate = true; 
    }
// MOVE THE CRATE IF THE PLAYER IS BENEATH IT AND DECIDES TO TRAVEL UPWARDS

    if(  (isplayergoingovercrate == true)  && (keyCode == UP) )  {
      
        yPosition = yPosition - 50;
    }
        
// MOVE THE CRATE IF THE PLAYER IS ON TOP OF THE CRATE AND DECIDES TO TRAVEL DOWNWARDS

    if(  (isplayergoingovercrate == true)  && (keyCode == DOWN) )  {
      
        yPosition = yPosition + 50;
    }
    
// MOVE THE CRATE IF THE PLAYER IS WANTING TO TRAVEL LEFT
    
    if(  (isplayergoingovercrate == true)  && (keyCode == LEFT) )  {
      
       xPosition = xPosition - 50;
    }    


// MOVE THE CRATE IF THE PLAYER IS LEFT TO IT AND MOVES RIGHT

    if(  (isplayergoingovercrate == true)  && (keyCode == RIGHT) )  {
      
        xPosition = xPosition + 50;
    }

}

// GETTING THE X AND Y POSITION OF THE CRATE/S  
  
  int getCrateXPosition(){  
  
    return xPosition;
  }

  int getCrateYPosition(){ 
  
    return yPosition;
  }
  
// USING ALTER POSITION SO THAT IT CAN BE ADJUSTED THROUGH OTHER CLASSES
  
  void alterPosition(int newX, int newY){
    xPosition = newX;
    yPosition = newY;
  }


}
