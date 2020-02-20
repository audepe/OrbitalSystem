float ang;
float angS;
int nPlanets;
ArrayList<Planet> planets;

void setup(){
  size(500,500,P3D);
  stroke(0);
  
   ang=0;
   angS=0;
   nPlanets = 5;
   
   planets = new ArrayList<Planet>();
   for(int i = 0; i < nPlanets; i++){
     planets.add(new Planet());
   }
}

void draw(){
  background(200);
  
  translate(width/2, height/2,0);
  rotateX(radians(-45));
  
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
    translate(-width*0.25,50*planets.indexOf(p),0);
    box(p.radius);
    popMatrix();
    
    p.updateAngle();
  }
}
