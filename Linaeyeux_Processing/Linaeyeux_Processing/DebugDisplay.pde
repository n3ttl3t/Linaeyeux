class DebugDisplay
{
  int frameRateYPos;

  DebugDisplay()
  {
    frameRateYPos = 0;
  }
  
  void Update()
  {
    frameRateYPos += 10;
    if(frameRateYPos > height)
    {
      frameRateYPos = 0;
    }
    
    Display();
  }
  
  void Display()
  {
    textSize(40);
    fill(255);
    text(frameRate, 10, frameRateYPos);
    text(objets.size(), 10, frameRateYPos + 50);
  }
}
