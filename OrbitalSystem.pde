float ang;
int nPlanets;
PImage back;
ArrayList<Planet> planets;

void setup(){
  size(1280,720,P3D);
  stroke(0);
  
  imageMode(CENTER);
  
  back = loadImage("background.jpg");
  
  ang=0;
  
  planets = new ArrayList<Planet>();
  /*
  nPlanets = 5;
  
  
  for(int i = 0; i < nPlanets; i++){
    planets.add(new Planet());
  }
  */
  
  Planet test1 = new Planet("1",10,0.25,0,new PVector(0,0,255));
  Planet test2 = new Planet("2",20,2*0.25,0,new PVector(0,255,0));
  Planet test3 = new Planet("3",30,3*0.25,0,new PVector(255,0,0));
  
  test3.addSatelite(test1);
  
  planets.add(test1);
  planets.add(test2);
  planets.add(test3);
  
  nPlanets = planets.size();
}

void draw(){
  background(200);
  
  translate(width/2, height/2,0);
  //rotateX(radians(-45));
  
  image(back,0,0);
  
  pushMatrix();
  rotateY(radians(ang));
  sphere(100);
  popMatrix();
  
  ang += 0.25;
  if (ang > 360){
    ang = 0;
  }
  
  for(Planet p : planets){
    pushMatrix();
    rotateZ(radians(p.angle));
    translate(-width*0.1 + ((-width*0.25)/nPlanets * planets.indexOf(p)) ,25,0);
    p.draw();
    popMatrix();
    
    p.updateAngle();
  }
}
