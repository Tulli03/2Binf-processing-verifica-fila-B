class Personaggio {
  PShape shape;
  float x, y;

  Personaggio(String fileName, float x, float y) {
    shape = loadShape(fileName);
    this.x = x;
    this.y = y;
  }
}

class Veicolo {
  PShape shape;
  float x, y;

  Veicolo(String fileName, float x, float y) {
    shape = loadShape(fileName);
    this.x = x;
    this.y = y;
  }
}

Personaggio harry;
Veicolo veicolo;

void setup() {
  fullScreen(P3D);

  harry = new Personaggio("harry.obj", width*0.5, height*0.2);
  harry.shape.setFill(#000000);

  veicolo = new Veicolo("broom.obj", width*0.5, height*0.9);
}


void draw() {
  background(#7AFF5D);
  lights();
  harry.disegna(width*0.5, height*0.2);
  veicolo.disegna(width*0.5, height*0.9);
}
