void reset() {
  intro.play();
leftx=0;
  lefty=height/2;
  leftd=200;
  rightx=800;
  righty=height/2;
  rightd=200;
  
  //initialize score
  rightscore=leftscore=0;
  timer=100;

  //initialize ball
  ballx=width/2;
  bally=height/2;
  balld=100;
  
}

 //for tactile buttons
    void tactileRect(int x,int y, int w, int h) { 
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    strokeWeight(6);
    stroke(255);
  } else {
    strokeWeight(6);
    stroke(0);
  }
    }
