
class persona{
private float x;
private float y;
private float dx;
private float dy;

private float volumen;




public persona(float x,float y, float dx, float dy,float volumen){
  this.x=x;
  this.y=y;
  this.dx=dx;
  this.dy=dy;
  this.volumen=volumen;
  
}


public float[] getPositionVector(float tiempo){

  float[] pos =new float[2];
  pos[0]=dx*tiempo+x;
  pos[1]=dy*tiempo+y;
  return pos;
  
}

public void update(float t){
  x=dx*tiempo+x;
  y=dy*tiempo+y;
}

void draw(){
   circle(x,y,volumen);
}
}
