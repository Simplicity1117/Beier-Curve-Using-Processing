
// Manupulating Bezier Curve on 4 control points 
// March-28-2016,  NUAA INTERNATIONAL STUDENT 
// Based on CAD/CAM CLASS
// Built on Processing

float pointX1=0;
float pointY1=0;

float pointX2=0;
float pointY2=0;

float  x1=0;
float  y1=0;
float  x2=0;
float  y2=0;


int mouseclicked=1;


void setup()
{
  background(127.5);
  fullScreen();
  //size(600,600);
  textSize(32);
  text("BeZier Curve on 4 control points", (width-530), (height-60));
  
  strokeWeight(4);
  line(0,20,width,20);
  strokeJoin(MITER);
  beginShape();
  vertex(width-50, 5);
  vertex(width, 20);
  vertex(width-50, 35);
  endShape();
  
  line(20,0,20,height);
  strokeJoin(MITER);
  beginShape();
  vertex((20+15), height-50);
  vertex(20, height);
  vertex((20-15),height-50);
  endShape();
  
  
}

void draw()
{
  //if((pointX1==0) || (pointY1==0) || (pointX1==0) || (pointY2==0) || (x1==0)|| (x2==0)|| (y1==0)|| (y2==0))
  if (mouseclicked == 5)
  {

    bezier(pointX1,pointY1,x1,y1,x2,y2,pointX2,pointY2);
  }
  else
  {
     //bezier(pointX1,pointY1,x1,y1,x2,y2,pointX2,pointY2);
  }

 if (key == 'p')
    {
      exit();
    }
  
  
 
}


void mousePressed()
{
  if (mouseclicked==1)
  {
    ellipse(mouseX,mouseY,5,5);
    pointX1=mouseX;
    pointY1=mouseY;
    
    
    text(mouseX,pointX1-120,(pointY1-10));
    text(mouseY,pointX1-50,(pointY1-10));
  }
  
  if (mouseclicked==2)
   {
    ellipse(mouseX,mouseY,5,5);
    x1=mouseX;
    y1=mouseY;
    
    
    text(mouseX,x1,(y1-10));
    text(mouseY,x1+90,(y1-10));
  }

  if (mouseclicked==3)
   {
    ellipse(mouseX,mouseY,5,5);
    x2=mouseX;
    y2=mouseY;
    
    
    text(mouseX,x2,(y2-10));
    text(mouseY,x2+90,(y2-10));
   }
  
  if (mouseclicked==4)
   {
    ellipse(mouseX,mouseY,5,5);
    pointX2=mouseX;
    pointY2=mouseY;
    
   
    text(mouseX,pointX2,(pointY2-10));
    text(mouseY,pointX2+100,(pointY2-10));
   }
   
   if (mouseclicked==5)
   {
    mouseclicked=0;
  }
    
    mouseclicked=mouseclicked+1;
}

void keyPressed()
{
  
    background(127.5);
    
    strokeWeight(4);
    line(0,20,width,20);
    strokeJoin(MITER);
    beginShape();
    vertex(width-50, 5);
    vertex(width, 20);
    vertex(width-50, 35);
    endShape();
    
    line(20,0,20,height);
    strokeJoin(MITER);
    beginShape();
    vertex((20+15), height-50);
    vertex(20, height);
    vertex((20-15),height-50);
    endShape();
    
    float pointX1=0;
    float pointY1=0;

    float pointX2=0;
    float pointY2=0;

    float  x1=0;
    float  y1=0;
    float  x2=0;
    float  y2=0;
    
    textSize(32);
    text("BeZier Curve on 4 control points", (width-530), (height-60));
    
    int mouseclicked=1;
    
    if (key == 'p')
    {
      exit();
    }
  
}

  