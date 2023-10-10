int sum = 0;
void setup(){
  size(480,500);
  noLoop();
}
void draw(){
    background(0);
    for (int i = 70; i <=330; i += 130){
      for (int e = 70; e <= 330; e+= 130){
        Die bob = new Die(i,e);
        bob.show(i,e);
      }
    }
    fill(#00FFFF);
    textSize(20);
    text("There are " + sum + " dots in total", 150,470);
    sum = 0;
    noFill();
}
void mousePressed(){
      redraw();
}
class Die {//models one single dice cube 
    Die(int x, int y){ //constructor
    color c = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      fill(c);
      rect(x-16,y-16,100,100,10);
      noFill();
      fill(255);
      rect(x,y,100,100,10);
      noFill();
    }
    void show(int myX, int myY){
      int diceRoll = (int)(Math.random()*6+1);
      if(diceRoll == 1){
        fill(0);
        ellipse(myX + 50,myY + 50,15,15);
        noFill();
        sum += 1;
    } else if (diceRoll == 2){
        fill(0);
        ellipse(myX + 70,myY + 50,15,15);
        ellipse(myX + 30,myY + 50,15,15);
        noFill();
        sum += 2;
    } else if (diceRoll == 3){
        fill(0);
        ellipse(myX + 70,myY + 60,15,15);
        ellipse(myX + 30,myY + 60,15,15);
        ellipse(myX + 50,myY + 35,15,15);
        noFill();
        sum += 3;
    } else if (diceRoll == 4){
        fill(0);
        ellipse(myX + 70,myY + 30,15,15);
        ellipse(myX + 30,myY + 30,15,15);
        ellipse(myX + 70,myY + 70,15,15);
        ellipse(myX + 30,myY + 70,15,15);
        noFill();
        sum += 4;
    } else if (diceRoll == 5){
        fill(0);
        ellipse(myX + 70,myY + 75,15,15);
        ellipse(myX + 30,myY + 75,15,15);
        ellipse(myX + 50,myY + 50,15,15);
        ellipse(myX + 70,myY + 27,15,15);
        ellipse(myX + 30,myY + 27,15,15);
        noFill();
        sum +=5;
    } else if(diceRoll == 6){
        fill(0);
        ellipse(myX + 70,myY + 50,15,15);
        ellipse(myX + 30,myY + 50,15,15);
        ellipse(myX + 70,myY + 80,15,15);
        ellipse(myX + 30,myY + 80,15,15);
        ellipse(myX + 70,myY + 20,15,15);
        ellipse(myX + 30,myY + 20,15,15);        
        noFill();   
        sum += 6;
    }
  }
}
