//Emily Cabrera
//https://youtu.be/dflMrTyxXlI
//Com. 1

PImage imagen;
int columnas = 20;
int filas = 20;
float espacio;

boolean activarEfecto = false; //Cambia el valor de false a true (activa el efecto)
float efectoEstatico = 0; //Posición inicial
float duracionEfecto = 70;

void setup() {
  size(800, 400); 
  espacio = 400 / columnas;  //Espacio que ocupa la obra
  noStroke();

  imagen = loadImage("imagen.png");
}

void draw() {
  background(0);
  image(imagen,0,0,400,400);
  float t = frameCount - efectoEstatico;

  if (activarEfecto && t > duracionEfecto) {
    activarEfecto = false;
  }

  // Lado derecho, la obra interactiva
  for (int y = 0; y < filas; y++) {
    for (int x = 0; x < columnas; x++) {
      float posX = x * espacio + espacio / 2 + 400;  //desde la mitad de la pantalla para la derecha
      float posY = y * espacio + espacio / 2;

      float baseSize = calcularTamBase(x, y, columnas,filas, espacio);
      float olaEffect = 0;

      if (activarEfecto) {
        float d = dist(x, y, columnas / 2, filas / 2);
        float ola = sin(d - t * 0.1) * exp(-0.05 * t);
        olaEffect = ola * (espacio * 0.2);
      }

      float diameter = baseSize + olaEffect;
      dibujarCirculo(posX, posY, diameter);
    }
  }
}

//Función que no retorna 
void dibujarCirculo(float x, float y, float tam) {
  fill(255);
  ellipse(x, y, tam, tam);
}

//Función que si retorna
float calcularTamBase(int x, int y, int columna, int fila, float esp) {
  float d = dist(x, y, columna / 2, fila / 2);
  return map(d, 0, columna/ 2, esp * 0.9, esp * 0.3);
}

//Haciendo click activa el efecto
void mousePressed() {
  if (!activarEfecto) {
    activarEfecto = true;
    efectoEstatico = frameCount;
  }
}

//Funciones en teclado, el efecto se reinicia con "R"
void keyPressed() {
  if (key == 'r' || key == 'R') {
    activarEfecto = false;
    efectoEstatico = 0;
  } else {     //Se activa el efecto con cualquier tecla menos la "R"
    activarEfecto = true;
    efectoEstatico = frameCount;
  }
}
