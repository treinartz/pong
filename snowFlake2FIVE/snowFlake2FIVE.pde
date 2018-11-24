
SnowFlake []s;
void setup(){
  size(700, 400);
  s=new SnowFlake[100];
  for(int i=0;i<s.length; i++){
    s[i]=new SnowFlake();
  }
  
}

void draw(){
  background(0);
   for(int i=0;i<s.length; i++){
    s[i].move();
    s[i].show();
  }
  
}
