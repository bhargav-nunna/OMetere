
color be=0;
color en=125;
color c=125;
void setup() {
  size(300,300);
  smooth();
  background(255);
 
}
PFont f;
int val=0;
void draw() {
  
  noStroke();
 f = createFont("Arial",16,true);
  float s = TWO_PI * millis()/6000;
  float m = TWO_PI * minute() / 60;
  float h = TWO_PI * ( hour() < 12 ? hour() : hour() - 12) / 12;
 // en=en-1;
 println(s);
  c= lerpColor(0,125, .33);
  if(s<=6.28){
  drawArc( 200, c, s );
  val=val+1;
  textFont(f,36);
  fill(0);
 text(val,130,160);
  }
  //drawArc( 160, 150, m );
  //drawArc( 120, 200, h ); 


 
}

void drawArc( float r, color c, float angle) {
  fill(250); 
  ellipse(150,150,r,r);    
  fill(c);
  arc(150,150,r,r,-PI/2,-PI/2 + angle);
  fill(255);
  ellipse(150,150,r-60,r-60);
}
