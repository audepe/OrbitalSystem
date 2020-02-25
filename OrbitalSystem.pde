PImage back;
Planet star;

void setup(){
  size(1280,720,P3D);
  stroke(0);
  
  imageMode(CENTER);
  
  back = loadImage("assets/background-alt.jpg");
 
  star = new Planet("",100,0.5,0,loadImage("assets/startexture.jpg"),false);
  
  Planet test1 = new Planet("Monnion",10,4*0.25,0.5,loadImage("assets/texture1.gif"),true);
  Planet test2 = new Planet("Selnuimia",20,3*0.25,5,loadImage("assets/texture2.gif"),true);
  Planet test3 = new Planet("Lozarth",60,2*0.25,12,loadImage("assets/texture3.gif"),true);
  Planet test4 = new Planet("Dulnarth",30,1*0.25,20,loadImage("assets/texture4.gif"),true);
  Planet test5 = new Planet("Oagantu",20,0.5*0.25,25,loadImage("assets/texture5.gif"),true);
  
  Planet satellite1 = new Planet("Theomia",10,3*0.25,0.5,loadImage("assets/texture6.gif"),true);
  
  test3.addSatelite(satellite1);
  
  star.addSatelite(test1);
  star.addSatelite(test2);
  star.addSatelite(test3);
  star.addSatelite(test4);
  star.addSatelite(test5); 
  
  back.resize(width,height);
}

void draw(){
  background(200);
  
  translate(width/2, height/2,0);
  background(back);  
  
  star.draw();
}
