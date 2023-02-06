public void setup()
{
  size(450,450);
  background(0,0,0);
  text("Press space to activate!",150,300);
  frameRate(1);
}
public void draw(){

  if(key == ' '){
    background(0);
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    sierpinski(0,450,450);
  }
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20){
    triangle(x,y, x+len,y, x+len/2,y-len);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
    //triangle(x,y, x+len/2,y, x+len/4,y-len/2);
    //triangle(x+len/2,y, x+(3*len)/4,y-len/2, x+len,y);
    //triangle(x+len/4,y-len/2, x+len/2,y-len, x+(3*len)/4,y-len/2);
  }
}
