class Scales
{

  ArrayList<Scale> scalesList = new ArrayList<Scale>();
  int activeScale;
  
  Scales()
  {
    scalesList.add(new ObjetPersistence());
    scalesList.add(new ObjetSize());
    scalesList.add(new ObjetBrightness());
    scalesList.add(new ObjetSaturation());
    scalesList.add(new ObjetHue());
    scalesList.add(new ObjetJourney());
    scalesList.add(new ObjetShape());
    scalesList.add(new ObjetFill());
    scalesList.add(new UIOpacity());
    activeScale = 0;
  }
  
  void Update()
  { 
    for(Scale s : scalesList)
    {
      s.Update();
    }
  }
  
  
  // ---- SET THE ACTIVE SCALE AND ACTIVE SCALE VALUES
  
  
  void SetActive(int s)
  {
    activeScale = s;
  }
  
  void Up()
  {
    if(activeScale < scalesList.size() - 1)
    {
      activeScale += 1;
    }
  }
  
  void Down()
  {
    if(activeScale > 0)
    {
      activeScale -= 1;
    }
  }
  
  void ChangeValue(float inc)
  {
    //print("changing value by " + inc);
    if (scalesList.size() >= (activeScale + 1))
    {
      scalesList.get(activeScale).SetValue(inc);
    }
  }
  
  void ChangeValueRandomness(float inc)
  {
    //print("changing value randomness by " + inc);
    if (scalesList.size() >= (activeScale + 1))
    {
      scalesList.get(activeScale).SetRandomness(inc);
    }
  }
  
  
  // ---- GET INFORMATION FOR UI
  
  
  String ActiveLabel()
  {
    if (scalesList.size() >= (activeScale + 1))
    {
      return scalesList.get(activeScale).label;
    }
    else
    {
      return "-"; 
    }
  }
  
  float ActiveValue()
  {
    if (scalesList.size() >= (activeScale + 1))
    {
      return scalesList.get(activeScale).value;
    }
    else
    {
      return 0;
    }
  }
  
  float ActiveValueRandomness()
  {
    if (scalesList.size() >= (activeScale + 1))
    {
      return scalesList.get(activeScale).randomness;
    }
    else
    {
      return 0;
    }
  }
  
}
