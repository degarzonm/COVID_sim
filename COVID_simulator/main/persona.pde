import java.lang.*;
class persona{
public float x;
public float y;
public float dx;
public float dy;
public float count;
private float volumen;




public persona(float x,float y, float dx, float dy,float volumen){
  count=0;
  this.x=x;
  this.y=y;
  this.dx=dx;
  this.dy=dy;
  this.volumen=volumen;
  
}

public void Count(){
  count+=1;
}

public float[] getPositionVector(float tiempo){

  float[] pos =new float[2];
  pos[0]=(float) (dx* Math.sqrt(tiempo) )+x;
  pos[1]=(float) (dy* Math.sqrt(tiempo) )+y;
  return pos;
  
}

public void update(float t){
  x=(float) (dx* tiempo )+x;
  y=(float) (dy* tiempo )+y;
}

void dibujar(){
  fill(255,255-2*count,255);
   circle(x,y,volumen);
}
}
