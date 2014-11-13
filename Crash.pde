float[] x = new float[5000];
float[] y = new float[5000];
float[] sz = new float[5000];
float[] xspeed = new float[5000];
float[] yspeed = new float[5000];

void setup() {
  size(1400, 800);
  noStroke();
  for(int i=0; i < x.length; i++){
    x[i] = width/2;
    y[i] = height/2;
    sz[i] = random(0,50);
    xspeed[i] = random(-5,5);
    yspeed[i] = random(-5,5);
  }
}

void draw() {
  background(0);
  for (int i=0; i < x.length; i++) {
    fill(random(255),random(255),random(255));
    ellipse(x[i], y[i], sz[i], sz[i]);
    x[i]+=xspeed[i];
    y[i]+=yspeed[i];
    if (x[i]+sz[i]/2 > width || x[i]-sz[i]/2 < 0) {
      xspeed[i] *= -1;
      background(random(255),random(255),random(255));
    }
    if (y[i]+sz[i]/2 > height || y[i]-sz[i]/2 < 0) {
      yspeed[i] *= -1;
      background(random(255),random(255),random(255));
    }
  }
}

