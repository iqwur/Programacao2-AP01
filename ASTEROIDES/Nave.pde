class Nave{
  float r, a, acel, velX, velY, thrust;
  PVector pos;
  
  Nave(){
    pos = new PVector(width/2, height/2);
    this.r = 20;
    a = 0.0; //angulo de rotação do triangulo
    thrust = 1;
    acel = 1;
    velX = 0;
    velY = 0;
  }
  
  void desenha(){
    translate(pos.x, pos.y); //funçao que posiciona o triangulo
    rotate(a + PI/2); //PI/2 para rotacionar o angulo do triangulo e ele andar para frente
    noStroke();
    fill(197, 122, 172);
    triangle(-this.r, this.r, this.r, this.r, 0, -this.r); //coordenadas xyz do triangulo
  }
  
  void rotaciona(float angulo){
  this.a = this.a + angulo;
  }

  void move(){
    velX *= acel;
    velY *= acel;
    pos.x = pos.x + velX;
    pos.y = pos.y + velY;
    
    //Limites da Tela
    if(pos.x > width + this.r) //se o triangulo estiver pra fora do canto direito da tela
    pos.x = -this.r; //voltara para o lado esquerdo da tela
    else if(pos.x < -this.r) //se o triangulo estiver pra fora do canto esquerdo da tela
    pos.x = width + this.r;//voltara para o lado direito da tela
    if(pos.y > height + this.r)//se o triangulo estiver pra fora do canto inferior da tela
    pos.y = -this.r;//voltara para o lado superior da tela
    else if(pos.y < -this.r)//se o triangulo estiver pra fora do superior inferior da tela
    pos.y = height + this.r;//voltara para o lado inferior da tela
  }
}
