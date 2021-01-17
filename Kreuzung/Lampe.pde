class Lampe
{
 private boolean an; // Die Lampe ist an oder aus.
 private String farbe; // "rot", "gelb" oder "gruen"
 private float x;
 private float y;
 private float radius;

 Lampe(String farbe_, float x_, float y_)
 {
   an = false;
   farbe = farbe_;
   x = x_;
   y = y_;
   radius = 20;
 }

 void setAn(boolean an_)
 {
   an = an_;
 }

 void zeichnen()
 {
   if (an)
   {
     if (farbe.equals("rot"))
     {
        fill(255, 0, 0);
     }
     if (farbe.equals("gelb"))
     {
        fill(255, 255, 0);
     }
     if (farbe.equals("gruen"))
     {
       fill(0, 255, 0);
     }
   }
   else
   {
     fill(50);
   }
   circle(x,y,2*radius);
  }
}
