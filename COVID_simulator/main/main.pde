
persona[] poblacion;





void setup(){
  size(800,800);
  background(40,40,40);
  poblacion=new persona[40];
  for(persona p:poblacion){
    p = new persona();
  }
}


void draw(){
  fill(100);
  
  for(int i=1;i<10;i++){
    for(int j=1;j<10;j++){
      ellipse(60*i,60*j,50,50);    
    }
  }
  
}
