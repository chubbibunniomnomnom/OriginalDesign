int t = 400;

void setup(){
  size(500,300);
  frameRate(24);
}

void draw(){
  bg();
  sun();
  speech();
  bushes();
  t = t-1;
  if (t <270){
    t = 270;
  }
}

void bg(){
  background(-t+417,-t+446, -t+471);
}


void bushes(){
  noStroke();
  fill(60, 140, 80);
  ellipse(10, 350, 450, 350);
  ellipse(450, 350, 300, 350);
  ellipse(270, 320, 200, 150);
}
void sun(){
  noStroke();
  fill(242, 221, 60);
  ellipse(250, t, 300, 300);
  strokeWeight(6);
  stroke(0);
  line(200, t-100, 225, t-100);
  line(275, t-100, 300, t-100);
  mouth();
}

void mouth(){
  strokeWeight(6);
  fill(0);
  ellipse(250, t-73, 30,30);
  //arc(250, t-75, 50, 30, 0, PI, CHORD);
}

void speech(){
  noStroke();
  fill(255);
  ellipse(400, t-150, 160, 80);
  arc(350, t-125, 60,40, -0.7, PI-0.7, OPEN);
  textSize(20);
  fill(0);
  text("go back \nto sleep", 360, t - 160);
}
