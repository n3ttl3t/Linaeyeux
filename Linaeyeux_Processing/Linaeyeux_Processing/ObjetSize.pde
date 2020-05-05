class ObjetSize
{
  int size;
  int min = 20;
  int max = 1000;
  
  int randomness = 0;

  
  ObjetSize()
  {
    size = 480;
  }
  
  void Update()
  {
    size = constrain(size, min, max);
    randomness = constrain(randomness, 0, max);

    for(Objet o : objets)
    {
      float r = Randomness();
      float siR = size + r;
      siR = constrain(siR, min, max);
      o.size = int(siR);
    }
  }
  
  
  // ----
  
  
  void Up()
  {
    print("size up");
    size += 10;
  }
  
  void Down()
  {
    print("size down");
    size -= 10;
  }
  
  void RandomUp()
  {
    randomness += 1;
    print("size randomness up");
  }
  
  void RandomDown()
  {
    randomness -= 1;
    print("size randomness down");
  }
  
  float Randomness()
  {
    float r = 0;
    r = random(randomness * -1, randomness);
    return r;
  }
}
