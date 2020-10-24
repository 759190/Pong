//Sarah Nelson
//block 1-1a
//Oct 15, 2020

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound effects
Minim minim;
AudioPlayer clapping,intro,leftpaddle,rightpaddle,score,wall;

//mode framework
int mode;
final int INTRO=1;
final int GAME=2;
final int PAUSE=3;
final int GAMEOVER=4;
//images
PImage button,redbutton;

//scoring
int leftscore,rightscore,timer;

float leftx,lefty,leftd,rightx,righty,rightd;
float ballx,bally,balld; //ball
float vx,vy; //velocity
float dL,dR;
float leftr,rightr; 
float ballr;

int counter; //for blinking sign
boolean AI; //AI variable

//keyboard variables
boolean wkey,skey,upkey,downkey; //true or false

PFont neon,neon1,neon2;

void setup() {
 size(800,600);
 imageMode(CENTER);
  mode=INTRO;
  //initialize paddles
  leftx=0;
  lefty=height/2;
  leftd=200;
  rightx=800;
  righty=height/2;
  rightd=200;
  
  //initialize score
  counter=0;
  
  //initialize score
  rightscore=leftscore=0;
  timer=100;
  
  //bouncing collision
  dL=dist(leftx,lefty,ballx,bally);
  dR=dist(rightx,righty,ballx,bally);
  leftr=leftd/2;
  rightr=rightd/2;
  ballr=balld/2;
 
  //velocity
vx=3;
vy=3;
 
   //minim
minim= new Minim(this);
clapping=minim.loadFile("clapping.wav"); //clapping gameover
intro=minim.loadFile("intro.wav"); //intro song
leftpaddle=minim.loadFile("leftpaddle.wav"); //left paddle sound
rightpaddle=minim.loadFile("rightpaddle.wav"); //right paddle sound
score=minim.loadFile("score.wav"); //score increase sound
wall=minim.loadFile("wall.wav"); //wall hit sound

  //initialize ball
  ballx=width/2;
  bally=height/2;
  balld=100;
  //initialize keyboard
  wkey=skey=upkey=downkey=false;
  button=loadImage("purple.jpg");
   redbutton=loadImage("red.png");
 neon=createFont("NeonDisco.ttf",100);
  neon1=createFont("neon2.ttf",100); //nice
  neon2=createFont("Neondark.ttf",100);
  
}

void draw()  {
  if (mode==INTRO) {
    intro();
  }else if (mode==GAME) {  
   game(); 
  }else if (mode==PAUSE) {
    pause();
  }else if (mode==GAMEOVER) {
    gameover();
  }else{
    println("Error: Mode= " + mode);
  }
}
