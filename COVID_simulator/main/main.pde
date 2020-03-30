
persona[] poblacion;
float tiempo;
int n;

void setup(){
  n=400;

  tiempo=0.0f;
  size(200,200);
  background(40,40,40);

  poblacion=new persona[n];
  for(int i=0;i<n;i++){
    poblacion[i]= new persona(random(width),random(height),random(-12,12),random(-12,12),random(9.0f,15.0f));
  }
}

void draw(){
  //background(40,40,40);
 
  
  for(int i=0;i<n;i++){
    poblacion[i].update(tiempo);
    poblacion[i].dibujar();
    if (poblacion[i].x>width || poblacion[i].x<1){
    poblacion[i].dx= -poblacion[i].dx;
    poblacion[i].Count();
  }
  if (poblacion[i].y>height || poblacion[i].y<1){
    poblacion[i].dy= -poblacion[i].dy;
    poblacion[i].Count();
  }
  }
  
  
  tiempo+=0.001;
  
  
}
