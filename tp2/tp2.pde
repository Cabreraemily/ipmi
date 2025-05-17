// Emily Cabrera
// Variables
float texto1 = 1;
float texto2 = 1;
float texto3 = 1;
PImage coraline1;
PImage coraline2;
PImage coraline3;

void setup() {
  size(640, 480);
  coraline1 = loadImage("coraline1.jpg");
  coraline2 = loadImage("coraline2.jpg");
  coraline3 = loadImage("coraline3.jpg");
}

void draw() {
  background(255);
  println(frameRate);

  //Pantalla 1
  if (frameCount <= 800) {
    image(coraline1, -30, -10, 700, 700);
//Animación texto
    texto1 = frameCount * 0.2;
    if (texto1 < 2) {
      texto1 = 2;
    }
    if (texto1 > 25) {
      texto1 = 25;
    }
//Cuadro de texto
    fill(13, 11, 11, 150);
    rect(20, 120, 600, 240, 10);
//Texto
    fill(188, 186, 186);
    textSize(texto1);
    text(" Bienvenidos al universo de Coraline,\nCoraline es una película de animación stop-motion.\nCuenta la historia de una niña que se muda a una nueva\ncasa y descubre una puerta secreta hacia un mundo\nalternativo que parece mejor que el real.", 30, 150);
  }

  //Pantalla 2
  if (frameCount > 800 && frameCount <= 1300) {
    image(coraline2, 0, 0, 640, 480);
//Animación texto
    texto2 = (frameCount - 800) * 0.2;
    if (texto2 < 5) {
      texto2 = 5;
    }
    if (texto2 > 22) {
      texto2 = 22;
    }
//Cuadro de texto
    fill(13, 11, 11, 150);
    rect(20, 120, 567, 178, 10);
//Texto
    fill(188, 186, 186);
    textSize(texto2);
    text(" El gato de su amigo aunque no tiene nombre,\nactúa como una especie de guía o protector para Coraline.\nEs quien le muestra la puerta secreta y la ayuda a descubrir\nque el otro mundo es una trampa peligrosa.", 30, 150);
  }

  //Pantalla 3
  if (frameCount > 1300) {
    image(coraline3, 0, 0, 640, 480);
//Animación texto
    texto3 = (frameCount - 1300) * 0.2;
    if (texto3 < 5) {
      texto3 = 5;
    }
    if (texto3 > 25) {
      texto3 = 25;
    }
//Cuadro de texto
    fill(13, 11, 11, 150);
    rect(20, 120, 600, 240, 10);
//Texto
    fill(255);
    textSize(texto3);
    text(" En ese mundo alternativo, Coraline tiene otros padres\ncon botones en lugar de ojos, que al principio\nparecen perfectos. Pero pronto descubre que\nese universo es una trampa creada por una siniestra\ncriatura que quiere quedarse con ella.", 30, 150);
  }

  //Botón de reinicio
  if (frameCount > 1800) {
    if (mousePressed) {
      frameCount = 0;
      texto1 = 1;
      texto2 = 1;
      texto3 = 1;
    }

    fill(255, 100);
    rect(width - 120, height - 60, 100, 40, 10);
    fill(0);
    textSize(17);
    text("Reiniciar", width - 110, height - 35);
  }
}
