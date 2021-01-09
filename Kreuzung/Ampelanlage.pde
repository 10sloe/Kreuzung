class Ampelanlage
{
  private Ampel ampel1;
  private Ampel ampel2;
  private Ampel ampel3;
  private Ampel ampel4;

  private int phase;

  public Ampelanlage()
  {
    ampel1 = new Ampel(500, 500, "sued");
    ampel2 = new Ampel(100, 500, "west");
    ampel3 = new Ampel(200, 100, "nord");
    ampel4 = new Ampel(500, 200, "ost");
    waagrechtFaehrt();
  }

  public void waagrechtFaehrt()
  {
    ampel1.gruenSetzen();
    ampel2.rotSetzen();
    ampel3.gruenSetzen();
    ampel4.rotSetzen();
    phase = 1;
  }

  public void weiterschalten()
  {
    if (phase == 1)
    { 
      ampel1.weiterschalten(); // gelb
      ampel3.weiterschalten(); // gelb
    }
    else if (phase == 2)
    { 
      ampel1.weiterschalten(); // rot
      ampel3.weiterschalten(); // rot
    }
    else if (phase == 3)
    { 
      ampel2.weiterschalten(); // rotgelb
      ampel4.weiterschalten(); // rotgelb
    }
    else if (phase == 4)
    { 
      ampel2.weiterschalten(); // gruen
      ampel4.weiterschalten(); // gruen
    }
    else if (phase == 5)
    { 
      ampel2.weiterschalten(); // gelb
      ampel4.weiterschalten(); // gelb
    }
    else if (phase == 6)
    { 
      ampel2.weiterschalten(); // rot
      ampel4.weiterschalten(); // rot
    }
    else if (phase == 7)
    { 
      ampel1.weiterschalten(); // rotgelb
      ampel3.weiterschalten(); // rotgelb
    }
    else if (phase == 8)
    { 
      ampel1.weiterschalten(); // gruen
      ampel3.weiterschalten(); // gruen 
    }
    phase = phase + 1;
    if (phase > 8)
    {
      phase = 0;
    }
    
  }


  public void zeichnen()
  {
    ampel1.zeichnen();
    ampel2.zeichnen();
    ampel3.zeichnen();
    ampel4.zeichnen();
  }
}
