//Emily Cabrera
//tp1
//cons1
PImage imagen, grilla;
void setup(){
  size (800,400);




  //cielo azul
  background(0,0,137);


  imagen= loadImage("gaturro.png");
  grilla= loadImage("grilla.png");
}

  
void draw(){
  image(imagen,0,0,400,400);
  image(grilla,0,0);
  image(grilla,400,0);
  
  //base
  fill(164,144,178);
  rect(518,350,200,200);

//cuerpo
  fill(198,147,4);
  rect(567,250,80,100); //torso
  
   //la pancita
   fill(247,255,41);
ellipse(602,300,50,30);
   
   
   fill(198,147,4);
  rect(553,330,50,40,30); //pie ezquierdo
  rect(647,300,45- 5,57, 10); //la cola
  rect(600,330,50,40,30); //pie derecho
  rect(490,271,80,13,80); // braso izquierdo
  rect(482,244,18,30,50); //pulgar
  rect(463,253,37,50,30); //mano izquierda
   
    //dedos 
    line(480,265,482,273);
    line(482,273,465,273);
    
    line(479,282,482,290);
    line(482,288,464,291);
    
    
  //line cola
   line(647,316,683,303);
  line(649,314,684,310);
  
 
  rect(637,278,15,40,80); //braso derecho
  line(642,307,642,316); //line de la mano
  line(647,307,647,315);  
  
 //lineas de la pierna
  line(602,339,603,329);
  line(584,321,592,326);
  line(326,602,329,615);
  line(615,325,631,323);
  line(593,326,602,327);
  line(602,327,615,325);
  
  //garras izquierda
  line(564,354,564,369);
  line(574,355,574,370);
  line(586,356,586,369);
  
  //garra derecha
  line(612,357,612,369);
  line(622,358,622,370);
  line(633,359,633,369);
  
  //lineas de la cola
  strokeWeight(3);
 
  line(670,341,680,356);
  line(672,333,687,343);
  
  
 
   
   //las partes de la boca
   
   fill(255);
   ellipse(600,238,50,48);
   
   
   fill(252,148,230);
   ellipse(602,236,30,29);
   
   //las mejillas
   fill(247,255,41);
   circle(550,174,167);
   circle(663,176,169);
   
   
   //la nariz
   fill(252,148,230);
 circle(605,100,40);
 
   //las lineas de la nariz
  line(604,108,603,117);
 
 
 //los ojos
   fill(255);
   ellipse(582,70,50,80);
   ellipse(627,70,50,80);
   
   //las pupilas
   fill(0);
   ellipse(585,70,8,27);
   ellipse(631,69,8,27);
   
   //lineas bigotes
   line(442,90,486,135);
   line(472,154,419,140);
   line(469,182,421,193);
   
   line(722,127,758,94);
   line(775,133,732,149);
   line(739,169,775,172);
   
   fill(255);
   circle(453,58,77);
   
   fill(0,0,137);
   circle(470,51,70);
   
   //linea de las cejas 
   line(560,20,575,16);
  line(635,14,650,24);
}

  
 
  
  
  void mouseClicked(){
    println("X:"+ mouseX+  "|Y:"+ mouseY);
  }
  
