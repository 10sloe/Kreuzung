class Ampel
{
  private Lampe oben;
  private Lampe mitte;
  private Lampe unten;
  String ampelphase;
  private float x;
  private float y;
  private String ausrichtung;

  Ampel(float x_, float y_, String ausrichtung_)
  {
    x = x_;
    y = y_;
    ausrichtung = ausrichtung_;
    if (ausrichtung.equals("sued"))
    {
      oben = new Lampe("rot", x+40, y+40);
      mitte = new Lampe("gelb", x+ 40, y+100);
      unten = new Lampe("gruen", x+40, y+160);
    }
    if (ausrichtung.equals("nord"))
    {
      oben = new Lampe("rot", x+40, y+160);
      mitte = new Lampe("gelb", x+ 40, y+100);
      unten = new Lampe("gruen", x+40, y+40);
    } 
    if (ausrichtung.equals("ost"))
    {
      oben = new Lampe("rot", x+40, y+40);
      mitte = new Lampe("gelb", x+ 100, y+40);
      unten = new Lampe("gruen", x+160, y+40);
    } 
    if (ausrichtung.equals("west"))
    {
      oben = new Lampe("rot", x+160, y+40);
      mitte = new Lampe("gelb", x+ 100, y+40);
      unten = new Lampe("gruen", x+40, y+40);
    } 
  }

  void rotSetzen()
  {
    oben.setAn(true);
    mitte.setAn(false);
    unten.setAn(false);
    ampelphase = "rot";
  }

  void gelbSetzen()
  {
    oben.setAn(false);
    mitte.setAn(true);
    unten.setAn(false);
    ampelphase = "gelb";
  }

  void gruenSetzen()
  {
    oben.setAn(false);
    mitte.setAn(false);
    unten.setAn(true);
    ampelphase = "gruen";
  }

  void rotGelbSetzen()
  {
    oben.setAn(true);
    mitte.setAn(true);
    unten.setAn(false);
    ampelphase ="rotgelb";
  }

  void zeichnen()
  {
    fill(0);
    if (ausrichtung.equals("nord") || ausrichtung.equals("sued"))
    {
    rect(x, y, 80, 200);
    }
    else
    {
      rect(x,y,200,80);
    }
    oben.zeichnen();
    mitte.zeichnen();
    unten.zeichnen();
  }

  void weiterschalten()
  {
    if (ampelphase.equals("rot"))
    {
      rotGelbSetzen();
    } 
    else if (ampelphase.equals("rotgelb"))
    {
      gruenSetzen();
    }
    else if (ampelphase.equals("gruen"))
    {
      gelbSetzen();
    }
    else if (ampelphase.equals("gelb"))
    {
      rotSetzen();
    }
  }
}
