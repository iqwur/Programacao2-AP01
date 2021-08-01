//Georgia Rebeka da Silva - 398289
//Programação 2
//Trabalho AP01

Nave n;
ArrayList <Tiro> tiros = new ArrayList<Tiro>();
ArrayList <Asteroides> ast = new ArrayList<Asteroides>();

void setup() {
  fullScreen();
  
  n = new Nave();
  
  for (int i = 0; i < 20; i++) {
    ast.add(new Asteroides());
  }
}


void draw() {
  background(0);
  
  for(int i = 0; i < ast.size(); i++){
    Asteroides asteroides = ast.get(i);
    asteroides.desenha();
    asteroides.move();
    asteroides.vel();
    }
    for(int i = 0; i < tiros.size(); i++){
      Tiro tiro = tiros.get(i);
      tiro.desenha();
      tiro.move();
      if(tiro.fora() == true){  
        tiros.remove(i);
        }else{
          for(int j = 0; j < ast.size(); j++){
            Asteroides asteroides = ast.get(j);
            if(tiro.acerta(asteroides)){
              ast.remove(j);
              tiros.remove(i);
            }
          }
        }
    }
    n.desenha();
    n.move();
}

void keyPressed() {
  if(key == ' '){
    tiros.add(new Tiro(n.pos,n.a)); 
  }else if(keyCode == LEFT){
      n.rotaciona(-0.3);
    }else if(keyCode == RIGHT){
      n.rotaciona(0.3);
    }else if(keyCode == UP){
      n.velX += cos(n.a) * n.thrust;
      n.velY += sin(n.a) * n.thrust;
    }else if(keyCode == DOWN){
      n.velX -= cos(n.a) * n.thrust;
      n.velY -= sin(n.a) * n.thrust;
    }
}
