class Planet{
  int radius;
  float angle;
  float velocity;
  float offsetPosition;
  
  Planet(int radius, float velocity, int offsetPosition){
    this.radius = radius;
    this.velocity = velocity;
    this.offsetPosition = offsetPosition;
    this.angle = 0;
  }
  
  Planet(){
    this.radius = floor(random(10,50));
    this.velocity = random(2);
    this.offsetPosition = 50;
    this.angle = 0;
  }
  
  void updateAngle(){
    this.angle += this.velocity;
    if (this.angle > 360){
      this.angle = 0;
    }
  }
}
