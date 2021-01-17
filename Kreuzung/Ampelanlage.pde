class Ampelanlage
{
  private Ampel unten;
  private Ampel links;
  private Ampel oben;
  private Ampel rechts;

  private int phase;

  public Ampelanlage()
  {
    unten = new Ampel(500, 500, "sued");
    links = new Ampel(100, 500, "west");
    oben = new Ampel(200, 100, "nord");
    rechts = new Ampel(500, 200, "ost");
    start();
  }

  public void start()
  {
    unten.gruenSetzen();
    links.rotSetzen();
    oben.gruenSetzen();
    rechts.rotSetzen();
    phase = 1;
  }

  public void weiterschalten()
  {
    if (phase == 1)
    { 
      unten.weiterschalten(); // gelb
      oben.weiterschalten(); // gelb
    }
    else if (phase == 2)
    { 
      unten.weiterschalten(); // rot
      oben.weiterschalten(); // rot
    }
    else if (phase == 3)
    { 
      links.weiterschalten(); // rotgelb
      rechts.weiterschalten(); // rotgelb
    }
    else if (phase == 4)
    { 
      links.weiterschalten(); // gruen
      rechts.weiterschalten(); // gruen
    }
    else if (phase == 5)
    { 
      links.weiterschalten(); // gelb
      rechts.weiterschalten(); // gelb
    }
    else if (phase == 6)
    { 
      links.weiterschalten(); // rot
      rechts.weiterschalten(); // rot
    }
    else if (phase == 7)
    { 
      unten.weiterschalten(); // rotgelb
      oben.weiterschalten(); // rotgelb
    }
    else if (phase == 8)
    { 
      unten.weiterschalten(); // gruen
      oben.weiterschalten(); // gruen 
    }
    phase = phase + 1;
    if (phase > 8)
    {
      phase = 0;
    }
    
  }


  public void zeichnen()
  {
    unten.zeichnen();
    links.zeichnen();
    oben.zeichnen();
    rechts.zeichnen();
  }
}
