 Bug [] colony;
 void setup()  
 {    
   size(500,500);
   frameRate(10);
   background(#C4F29A);
   colony = new Bug[15];
   for (int i=0; i<colony.length; i++){
     colony [i] = new Bug();
   } 
 }  
 void draw()  
 {  
   background(#A3D391);
   for(int i=0; i<colony.length; i++){
     colony[i].move();
     colony[i].show();
   }
 }  
 class Bug
 {
   int myX,myY,r,g,b;
   Bug()
   {
    myX=250;
    myY=250;
    r=(int)(Math.random()*250)+80;
    g=(int)(Math.random()*5)+50;
    b=(int)(Math.random()*5)+40;
   }
   void move()
   {
    myX= myX + (int)(Math.random()*20)-10;  
    myY= myY + (int)(Math.random()*20)-10;
   }
   void show()
   {
    stroke(0.01);
    fill(0);
    ellipse(myX,myY,20,20);
    fill(r,g,b);
    ellipse(myX,myY+15,30,35);
    fill(0);
    ellipse(myX+5,myY+5,5,5);
    ellipse(myX-5,myY+10,5,5);
    ellipse(myX+2,myY+20,5,5);
    ellipse(myX-8,myY+25,5,5);
   }
 }    
