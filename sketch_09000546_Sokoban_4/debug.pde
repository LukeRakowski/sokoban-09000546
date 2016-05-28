void debug(){

  fill(80);
  rect(500, 0, 400, height);    
  
  textSize(16);
  fill(255);

  textAlign(LEFT);
  text("X position of player: ", 520, 35);
  text(playerPositionX, 680, 35);

  text("Y position of player: ", 520, 60);
  text(playerPositionY, 680, 60);

  text("X position of crate: ", 520, 85);
  text(cratePositionX, 670, 85);

  text("Y position of crate: ", 520, 110);
  text(cratePositionY, 670, 110);



}
