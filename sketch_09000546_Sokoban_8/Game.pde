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
  wall.checkplayerandwallpositions(playerPositionX, playerPositionY);
//  wall.checkifplayerisbelowwall(boolean);
  
  }
  
  playerOne.drawtile(); 
  crateOne.drawtile();
  crateTwo.drawtile();
  crateOne.move(playerPositionX, playerPositionY);
  crateTwo.move(playerPositionX, playerPositionY);

}

// FUNCTION FOR RENDERING TILES THAT WILL ONLY BE DRAWN ON SCREEN ONCE AS TO SAVE MEMORY

void drawStaticTiles(){
  
// MAKE A WALL OF WALL TILES, USED DIFFERENT COLOURS TO MAKE SURE THEY ARENT OVERLAPPING  
  
// INITIALLY I PUT THE WALL CODE IN THE DRAW LOOP BUT IT SLOWED PROCESSING DOWN TO A HALT  
  
  stroke(153);
  
// DRAW CORNERS

  
  for(int i = 50; i < 450; i = i + 50){
  
 // MAKE A ROW OF LEFT VERTICAL WALLS
    
   listofwalls.add(new Wall(color(0, 0, 100),0, i, 50, 50));  
  }
  
  for(int i = 50; i < 450; i = i + 50){
  
 // MAKE A ROW OF RIGHT VERTICAL WALLS
    
   listofwalls.add(new Wall(color(0, 0, 100),450, i, 50, 50));  
  }
   
   for(int i = 50; i < 450; i = i + 50){
  
 // MAKE A ROW OF TOP HORIZONTAL WALLS
    
   listofwalls.add(new Wall(color(0, 0, 255),i, 0, 50, 50));  
  } 
  
    for(int i = 50; i < 450; i = i + 50){
  
 // MAKE A ROW OF BOTTOM HORIZONTAL WALLS
    
   listofwalls.add(new Wall(color(0, 0, 255),i, 450, 50, 50));  
  }   
  
}

void checkForWin(){
  
  
 
}

void loadNewBoard(){
  
  
 
  
}
