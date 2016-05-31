// CREATING PLAYER OBJECT FROM PLAYER CLASS, NO ARRAY NEEDED AS YET BECAUSE THERE CAN ONLY BE ONE PLAYER

Player playerOne = new Player(color(255, 0, 0),50, 50, 50, 50);

// ASSIGNING THE PLAYER X AND Y POSITIONS TO VARIABLES FOR PASSING TO CLASSESS, 
// GLOBAL VARIABLES BECAUSE MULTIPLE CLASSESS AND FUNCTIONS WILL NEED ACCESS TO THESE VALUES

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
  
// GETTING THE X AND Y POSITION OF THE PLAYER FOR PASSING IT ON INTO CLASSES etc
  
  
  int getPlayerXPosition(){  
  
    return xPosition;
  }
  
  int getPlayerYPosition(){ 
  
    return yPosition;
  }
  
// ALTER POSITION FUNCTION FOR OVERRIDING/MANIPULATING VALUES IN THE PLAYER CLASS
  
  void alterPosition(int newX, int newY){
    xPosition = newX;
    yPosition = newY;
  }

// A CHECK WILL HAVE TO BE DONE TO MAKE SURE THAT WHEN THE PLAYER IS UP AGAINST A BOX WHICH IS UP AGAINST
// A WALL TO MAKE SURE THAT THE BOX DOESNT GET MOVED OFF THE WALL ETC


}


