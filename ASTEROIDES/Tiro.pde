class Tiro{
  PVector posi, vel;

  Tiro(PVector posi_, float ang_){
    posi = new PVector(posi_.x, posi_.y);
    vel = PVector.fromAngle(n.a);
    vel.mult(10);

  }
  
  void move(){
  posi.add(vel);
  }

  void desenha(){
    stroke(255);
    strokeWeight(4);
    point(posi.x, posi.y);
  }
  
  boolean fora() {
    if (posi.x > width || posi.x < 0){
      return true;
    }
    
    if (posi.y > height || posi.y < 0){
      return true;
    }
    return false;
  }

  boolean acerta(Asteroides asteroides){
    float d = dist(posi.x,posi.y,asteroides.pos.x,asteroides.pos.y);
    if(d < asteroides.r){
      println("True");
      return true;
    }else{
      return false;
    }
  }
}
    
