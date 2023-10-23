void setup()
  {
      size(755,500);
      noLoop();
  }
  void draw()
  { 
    int nommm = 0;
    background(#FFFCA2);
    for(int x = 10; x < 760; x += 75){
         for(int y = 10; y < 435; y += 75){
    Die one = new Die(x,y);
    one.show();
    if(one.cubeNum == 1)
    nommm+=1;
    else if(one.cubeNum == 2)
    nommm+=2;
    else if(one.cubeNum == 3)
    nommm+=3;
    else if(one.cubeNum == 4)
    nommm+=4;
    else if(one.cubeNum == 5)
    nommm+=5;
    else if(one.cubeNum ==6)
    nommm+=6;
      //text("Sum of Dots: " + one.cubeNum,280,450);
      //one.nom = one.nom + one.cubeNum;
      }
    }
    text("Total: " + nommm,280,450);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die 
  {
      int myX, myY, cubeNum, nom;
      Die(int x, int y)
      {
        //cubeNum = (int)(Math.random()*6)+1;
        cubeNum = 0;
        nom = 0;
        myX = x;
        myY = y;
      }
      void roll()
      {

      }
      void show()
      {
       cubeNum = (int)(Math.random()*6)+1;
       nom = nom + cubeNum;
        fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        rect(myX,myY,50,50);
        //dots code below
        if(cubeNum == 1){
         fill(0);
         ellipse(myX+25,myY+25,5,5);
    }
         else if(cubeNum == 2){
         fill(0);
         ellipse(myX+25,myY+15,5,5);
         ellipse(myX+25,myY+35,5,5);
         }
         else if(cubeNum == 3){
         fill(0);
         ellipse(myX+25,myY+15,5,5);
         ellipse(myX+25,myY+25,5,5);
         ellipse(myX+25,myY+35,5,5);
         }
         else if(cubeNum == 4){
         fill(0);
         ellipse(myX+10,myY+15,5,5);
         ellipse(myX+30,myY+15,5,5);
         ellipse(myX+10,myY+30,5,5);
         ellipse(myX+30,myY+30,5,5);
         }
         else if(cubeNum == 5){
         fill(0);
         ellipse(myX+10,myY+15,5,5);
         ellipse(myX+40,myY+15,5,5);
         ellipse(myX+25,myY+30,5,5);
         ellipse(myX+10,myY+45,5,5);
         ellipse(myX+40,myY+45,5,5);
         }
         else if(cubeNum == 6){
         fill(0);
         ellipse(myX+20,myY+15,5,5);
         ellipse(myX+20,myY+30,5,5);
         ellipse(myX+20,myY+45,5,5);
         ellipse(myX+40,myY+15,5,5);
         ellipse(myX+40,myY+30,5,5);
         ellipse(myX+40,myY+45,5,5);
         }
      } //end of void show
  }
