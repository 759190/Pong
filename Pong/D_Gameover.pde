void gameover() {
 if(leftscore>rightscore) {
   textFont(neon2);
 fill(255,52,242);
  textSize(150);
textAlign(CENTER,CENTER); 
fill(255,52,242);
text("Left Wins",400,300); 
 }else{
   textFont(neon2);
 fill(255,52,242);
  textSize(150);
textAlign(CENTER,CENTER); 
fill(255,178,250);
text("Right Wins",400,300); 
   
   
 }
 
 
}

void gameoverClicks() {
  mode=INTRO;
  reset();

  
}
