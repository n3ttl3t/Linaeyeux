class Scale
{
  
  String label;
  float value = 0;
  int min;
  int max;
  float randomness = 0;
  float randomnessMax = 0;
  
  Scale()
  {
    min = 0;
    max = 100;
    randomnessMax = 100;
  }
  
  void Update()
  {
    Constraints();
    
    for(Objet o : objets)
    { 
      SendValue(o);
    }
  }
  
  void SendValue(Objet o)
  {
    // eg ---- o.saturation = int(AdjustedValue());
    print("need an overwrite method for " + o);
  }
  
  
  // ----
   
  void SetValue(float f)
  {
    value += f;
  }
  
  void SetRandomness(float f)
  {
    randomness += f;
  }
  
  // ----
   
  float AdjustedValue()
  {
    float r = Randomness();
    float valR = value + r;
    valR = constrain(valR, min, max);
    return valR;
  }
  
  float Randomness()
  {
    float r = 0;
    r = random(randomness * -1, randomness);
    return r;
  }
  
  void Constraints()
  {
    value = constrain(value, min, max);
    randomness = constrain(randomness, 0, randomnessMax);
  }

  
}
