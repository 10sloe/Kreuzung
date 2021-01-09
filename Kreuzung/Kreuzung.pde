Ampelanlage anlage;
int zaehler = 0;

void setup()
{
 size(800,800);
 anlage = new Ampelanlage();
}

void draw()
{
 

 zaehler++;
 if (zaehler == 100)
 {
   anlage.weiterschalten();
   zaehler = 0;
 }
    
 // Straße zeichnen
 fill(255);
 rect(0,350,800,100);
 rect(350,0,100,800);
 rect(350,350,100,100);
 
 // Ampeln zeichnen
 anlage.zeichnen();
 
}
