Ampel ampel1;
Ampel ampel2;
Ampel ampel3;
Ampel ampel4;
int zaehler = 0;

void setup()
{
 size(800,800);
 ampel1 = new Ampel(500,500, "sued");
 ampel2 = new Ampel(100,500, "west");
 ampel3 = new Ampel(200,100, "nord");
 ampel4 = new Ampel(500,200, "ost");
 ampel1.gruenSetzen();
 ampel2.rotSetzen();
 ampel3.gruenSetzen();
 ampel4.rotSetzen();
}

void draw()
{
 if (zaehler == 100)
 { 
   ampel1.weiterschalten(); // gelb
   ampel3.weiterschalten(); // gelb
 }
  if (zaehler == 150)
 { 
   ampel1.weiterschalten(); // rot
   ampel3.weiterschalten(); // rot  
 }
 if (zaehler == 200)
 { 
   ampel2.weiterschalten(); // rotgelb
   ampel4.weiterschalten(); // rotgelb  
 }
  if (zaehler == 250)
 { 
   ampel2.weiterschalten(); // gruen
   ampel4.weiterschalten(); // gruen  
 }
  if (zaehler == 350)
 { 
   ampel2.weiterschalten(); // gelb
   ampel4.weiterschalten(); // gelb
 }
  if (zaehler == 400)
 { 
   ampel2.weiterschalten(); // rot
   ampel4.weiterschalten(); // rot  
 }
 if (zaehler == 450)
 { 
   ampel1.weiterschalten(); // rotgelb
   ampel3.weiterschalten(); // rotgelb  
 }
  if (zaehler == 500)
 { 
   ampel1.weiterschalten(); // gruen
   ampel3.weiterschalten(); // gruen 
   zaehler = 0;
 }

 zaehler++;

 
 ampel1.zeichnen();
 ampel2.zeichnen();
 ampel3.zeichnen();
 ampel4.zeichnen();
 
 // Straße zeichnen
 fill(255);
 rect(0,350,800,100);
 rect(350,0,100,800);
 rect(350,350,100,100);
 
}
