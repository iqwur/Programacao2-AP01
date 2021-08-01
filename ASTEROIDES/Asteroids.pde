class Asteroides{
  PVector pos;
  PVector vel = PVector.random2D();
  float r;
  
  Asteroides(){
    this(new PVector(random(width), random(height)), random(15,70));
  }
  
  Asteroides(PVector pos_, float r_){
    pos = pos_;
    r = r_ * 1.5;
  }  
  
  void desenha(){
    push();
    fill(220,220,220);
    translate(pos.x, pos.y);
    ellipse(0, 0, this.r,this.r);
    pop();
  }

  void vel(){
    this.pos.add(vel);
    
  }
   void move(){
     if(this.pos.x > width + this.r)//se o asteroide estiver pra fora do canto direito da tela
     this.pos.x = -this.r; //voltara para o lado esquerdo da tela
     else if(this.pos.x < -this.r) //se o asteroide estiver pra fora do canto esquerdo da tela
     this.pos.x = width + this.r;//voltara para o lado direito da tela
     if(this.pos.y > height + this.r)//se o asteroide estiver pra fora do canto inferior da tela
     this.pos.y = -this.r;//voltara para o lado superior da tela
     else if(this.pos.y < -this.r)//se o asteroide estiv trianguloer pra fora do superior inferior da tela
     this.pos.y = height + this.r;//voltara para o lado inferior da tela
   }
}
 
