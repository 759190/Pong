void game() {
  background(0);
  intro.pause();
  
  //scoreboard
  textSize(70);
  fill(255,52,242);
 text(leftscore,width/4,100);
 fill(255,178,250);
 text(rightscore,3*width/4,100);
  timer=timer-1;
  
  //centre line
  strokeWeight(5);
  stroke(255);
  line(400,0,400,600);
  
  //ball
  fill(0);
  strokeWeight(5);
  stroke(255);
  circle(ballx,bally,balld);
  //ball setup
   dL=dist(leftx,lefty,ballx,bally);
  dR=dist(rightx,righty,ballx,bally);
  leftr=leftd/2;
  rightr=rightd/2;
  ballr=balld/2;
  
  //movement
  if(timer<0) {
ballx=ballx+vx; 
  bally=bally+vy;
  }
  //paddle bounce
   if(dL<=leftr+ballr) {
      vx=(ballx-leftx)/20;
      vy=(bally-lefty)/20;
      leftpaddle.rewind();
      leftpaddle.play();
   }
    if(dR<=rightr+ballr) {
      vx=vx*-1;
      vx=(ballx-rightx)/15;
      vy=(bally-righty)/15;
      rightpaddle.rewind();
      rightpaddle.play();
   }
 //wall bounce  
 if (bally>=height-balld/2 || bally<=balld/2) {
    vy=vy*-1; 
    wall.rewind();
    wall.play();
 }
  
  //draw paddles
  fill(0);
  strokeWeight(10);
  stroke(255,52,242);
  circle(leftx,lefty,leftd);
  stroke(255,178,250); 
  circle(rightx,righty,rightd);
//-------------------------------------  2 player
  //move paddles 
  if (wkey==true) lefty=lefty-5;
  if (skey==true) lefty=lefty+5;
  //left paddle limits
  if (lefty<100) {
  lefty=100; 
 }
 if (lefty>500) {
  lefty=500; 
 }
  if (AI==false) {
  if (upkey==true) righty=righty-5;
  if (downkey==true) righty=righty+5;
  }
  //right paddle limits
  if (righty<100) {
  righty=100; 
 }
 if (righty>500) {
  righty=500; 
 }else{ //------------------------ 1 player
  if (AI==true) 
    if (ballx>400) {
  if(righty>bally) {
    righty=righty-3;
  }
  if (righty<bally) {
    righty=righty+3;
  }
    //right paddle limits
  if (righty<100) {
  righty=100; 
 }
 if (righty>500) {
  righty=500; 
 }
    }
    //-----------------------------------
 //scoring
 if (ballx<0) {
   rightscore++; //rightscore+1
   ballx=width/2;
   bally=height/2;
   timer=100;
   score.rewind();
   score.play();
 }
 if (ballx>900) {
   leftscore++; //left+1
   ballx=width/2;
   bally=height/2;
   timer=100;
   score.rewind();
   score.play();
 }
 
 //gameover commands
 if (leftscore==3) {
 mode=GAMEOVER;
 clapping.play();
 }
 if (rightscore==3) {
  mode=GAMEOVER; 
  clapping.play();
 }} 
}

void gameClicks() {
  mode=PAUSE; 
}
