// importamos la libreria

import themidibus.*;

// nombramos nuestro midi 
MidiBus myBus;

// asignamos un numero segun este conectado el midi device
void setup() {
  MidiBus.list();
  myBus = new MidiBus(this, 0, 1);
  
}

//veremos que numeros y valores nos da. 

void draw() {
}
 
 
 //  la función controllerChange() 
 //registra la información que produce cada tecla al pulsarse, 
 //cada palanca al desplazarse y cada botón al girar. 
 //Al accionarlos, en nuestra consola aparecerán grupos de tres cifras: 
 // la primera es el canal (siempre será el mismo si usamos un único controlador MIDI); 
 // la segunda, el número del elemento de control; la tercera, el valor generado por dicho elemento.

void controllerChange(int channel, int number, int value) {
  println(channel);
  println(number);
  println(value);
  println("-----");
}