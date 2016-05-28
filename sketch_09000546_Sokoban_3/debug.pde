void debug(){

  fill(80);
  rect(500, 0, 400, height);    
  
  println(playerPositionY);
  
  textSize(20);
  fill(255);

  text("X position of player: ", 520, 35);
  text(playerPositionX, 730, 35);

  text("Y position of player: ", 520, 60);
  text(playerPositionY, 730, 60);





}
