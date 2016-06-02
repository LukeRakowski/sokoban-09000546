int movementDirection;
int listOfGoalsReached;



// FUNCTION FOR DRAWING TILES WHICH DO NOT HAVE FIXED POSITIONS

void drawTiles(){
 
  stroke(153);


// DRAWING SOME CORNERS 
  
  fill(0);
  rect(0, 0, 50, 50);
  rect(0, 450, 50, 50);  
  rect(450, 0, 50, 50);  
  rect(450, 450, 50, 50);
  
// DISPLAY ALL OF THE WALLS IN THE WALL ARRAYLIST
  
  for(int i = 0; i < listofwalls.size(); i = i + 1){
  
  Wall wall = listofwalls.get(i); 
  wall.drawtile();
  wall.stopcrate(playerPositionX, playerPositionY);
  wall.checkplayerandwallpositions(playerPositionX, playerPositionY);
 
  }  
 
// DISPLAY ALL OF THE STOARGE LOCS IN THE STORAGE LOC ARRAYLIST AS WELL AS THEIR FUNCTIONS
  
  for(int a = 0; a < listofcrates.size(); a = a + 1){
    
      for(int i = 0; i < listofstoragelocations.size(); i = i + 1){
   
  StorageLocation storage = listofstoragelocations.get(i);  
  
  storage.drawtile();
  int storageXpos = storage.getStorageXPosition();
  int storageYpos = storage.getStorageYPosition();
  
// DISPLAY ALL OF THE CRATES IN THE CRATE ARRAYLIST AS WELL AS THEIR FUNCTIONS // DRAW ORDER STORAGE BENEATH THE CRATES
   
  Crate crate = listofcrates.get(a);  
  
  crate.drawtile();
  crate.move(playerPositionX, playerPositionY);  
  crate.getCrateXPosition();

  int crateXpos = crate.getCrateXPosition();
  int crateYpos = crate.getCrateYPosition();

// PASS THE CRATE AND STORAGE POSITON VALUES TO FUNCTION FOR CHECKING OVERLAPS
 
  checkifcrateinstorage(crateXpos, crateYpos, storageXpos, storageYpos);
  
    } 
  
  }
  
//  DRAW THE PLAYER

   playerOne.drawtile(); 

}

// FUCNTION TAKING IN THE CRATE AND STORAGE COORDINATES FROM DRAWTILES() FUNCTION

void checkifcrateinstorage(int crateXpos, int crateYpos, int storageXpos, int storageYpos){
  
// IF THE POSTIONS FOR CRATE AND STORAGE ARE THE SAME
  
  if(  (crateXpos == storageXpos)  &&  (crateYpos == storageYpos)  ){

// STORAGE LOCATION CHECKING OUTPUT
    
    println(crateXpos + " CRATE X");
    println(crateYpos + " CRATE Y");
    
    println(storageXpos + " STORAGE X");
    println(storageYpos + " STORAGE Y");    
    
  }
  
}


// FUNCTION FOR RENDERING TILES THAT WILL ONLY BE DRAWN ON SCREEN ONCE AS TO SAVE MEMORY

void drawStaticTiles(){
  
// DISPLAY 2 STORAGE LOCATIONS

  listofstoragelocations.add(new StorageLocation(color(255, 255, 40), 200, 200, 50, 50));
  listofstoragelocations.add(new StorageLocation(color(255, 255, 40), 400, 400, 50, 50));
  
// DISPLAY 2 CRATES  
  
   listofcrates.add(new Crate(color(0, 255, 0), 200, 350, 50, 50));
   listofcrates.add(new Crate(color(0, 255, 0), 200, 100, 50, 50));
  
// MAKE A WALL OF WALL TILES, USED DIFFERENT COLOURS TO MAKE SURE THEY ARENT OVERLAPPING  
  
// INITIALLY I PUT THE WALL CODE IN THE DRAW LOOP BUT IT SLOWED PROCESSING DOWN TO A HALT  
  
  stroke(153);
  


  
// MAKE A ROW OF LEFT VERTICAL WALLS
      
  for(int i = 50; i < 500; i = i + 50){

   listofwalls.add(new Wall(color(0, 0, 100),0, i, 50, 50));  
  }
  
// MAKE A ROW OF RIGHT VERTICAL WALLS  
  
  for(int i = 0; i < 450; i = i + 50){
    
   listofwalls.add(new Wall(color(0, 0, 100),450, i, 50, 50));  
  }

// MAKE A ROW OF TOP HORIZONTAL WALLS
   
   for(int i = 0; i < 450; i = i + 50){

   listofwalls.add(new Wall(color(0, 0, 255),i, 0, 50, 50));  
  } 

// MAKE A ROW OF BOTTOM HORIZONTAL WALLS
  
    for(int i = 50; i < 500; i = i + 50){

    listofwalls.add(new Wall(color(0, 0, 255),i, 450, 50, 50));  
  }   
  
}

void checkForWin(){
  
  
 
}

void loadNewBoard(){
  
  
 
  
}
