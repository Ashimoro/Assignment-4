class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float pcred,pcgreen,pcblue;
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
    pcred=random(255);
    pcgreen=random(255);
    pcblue=random(255);
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
    fill(pcred,pcgreen,pcblue);
  }
  
  void display(){
    ellipse(position.x, position.y, 10, 10);
  }
 
}
