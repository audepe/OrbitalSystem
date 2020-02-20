class Planet{
  
  String name;
  int radius;
  float angle;
  float velocity;
  float offsetPosition;
  PVector colorVal;
  ArrayList<Planet> satelites;

  
  Planet(String name, int radius, float velocity, int offsetPosition, PVector colorVal){
    this.name = name;
    this.radius = radius;
    this.velocity = velocity;
    this.offsetPosition = offsetPosition;
    this.angle = 0;
    this.satelites = new ArrayList<Planet>();
    this.colorVal = colorVal;
  }
  
  Planet(){
    this.radius = floor(random(10,30));
    this.name = "Kashyyyk";
    this.velocity = random(1);
    this.offsetPosition = 50;
    this.angle = 0;
    satelites = new ArrayList<Planet>();
    this.colorVal = new PVector(random(255),random(255),random(255));
  }
  
  void draw(){
    text(name,radius,0);
    fill(colorVal.x,colorVal.y,colorVal.z);
    box(this.radius);
    
    
    if(satelites != null){
      for (Planet p : satelites){
        pushMatrix();
        rotateZ(radians(p.angle));
        translate(-width*0.1 + ((-width*0.25)/nPlanets * planets.indexOf(p)) ,25,0);
        p.draw();
        popMatrix();    
        p.updateAngle();
      }
    }
  }
  
  void addSatelite(Planet satelite){
    satelites.add(satelite);
  }
  
  void updateAngle(){
    this.angle += this.velocity;
    if (this.angle > 360){
      this.angle = 0;
    }
  }
}
