void debug(){

  // debugger display, i find it much better to have the debug values on screen than in 
  // the command line, having to readjust editor space is daunting
  
  fill(80);
  rect(501, 0, 400, height);    
  
  textSize(16);
  fill(255);

  textAlign(LEFT);
  text("X position of player: ", 520, 35);
  text(playerPositionX, 680, 35);

  text("Y position of player: ", 520, 60);
  text(playerPositionY, 680, 60);

}
