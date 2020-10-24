void intro() {
  intro.play();
  clapping.pause();
  background(0);

//flashing pong sign
 counter=counter+1;
 if (counter<20) {
    textFont(neon1);
 textSize(150);
textAlign(CENTER,CENTER); 
fill(255,52,242);
text("Pong",400,120);
 }
 if (counter>20) {
   fill(0);  
 }
 
 if (counter==40) {
   counter=0;
 }
 
//buttons
tactileRect(435,300,280,100);
 rect(435,300,280,100); //player 2
 tactileRect(85,300,280,100);
 rect(85,300,280,100); //player 1
 image(button,575,350,280,100);//start
 image(button,225,350,280,100);//
//button text 
 textFont(neon2);
  textSize(60);
  fill(255,178,250); 
text("1 player",220,340);
text("2 player",580,340);
}
void introClicks() {
  //2 player
 if (mouseX>435&&mouseX<715&&mouseY>280&&mouseY<380) {
   mode=GAME;
   AI=false;
 }
 //1 player
 if (mouseX>85&&mouseX<365&&mouseY>280&&mouseY<380) {
   mode=GAME;
   AI=true;
 }
}
