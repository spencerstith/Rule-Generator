class Cellular {
  
  int[] values;
  int[] ruleset;
  int w;
  int rule;
  int generation;
  
  Cellular(int rule, int w) {
    this.rule = rule;
    this.ruleset = intToBinary(rule);
    this.w = w;
    values = new int[width / w];
    reset();
    generation = 0;
  }
  
  void reset() {
    for (int i = 0; i < values.length; i++) {
      values[i] = random(1) >= 0.50 ? 1 : 0;
    }
  }
  
  void show() {
    for (int i = 0; i < values.length; i++) {
      if (values[i] == 1) {
        square((i + 1) * w, generation * w, w);
      }
    }
  }
  
  void update() {
    generation++;
    values = getNewValues();
  }
  
  int[] getNewValues() {
    int[] newValues = new int[values.length];
    
    for (int i = 1; i < values.length - 1; i++) {
      if (values[i - 1] == 1 && values[i] == 1 && values[i + 1] == 1) {newValues[i] = ruleset[0];}
      if (values[i - 1] == 1 && values[i] == 1 && values[i + 1] == 0) {newValues[i] = ruleset[1];}
      if (values[i - 1] == 1 && values[i] == 0 && values[i + 1] == 1) {newValues[i] = ruleset[2];}
      if (values[i - 1] == 1 && values[i] == 0 && values[i + 1] == 0) {newValues[i] = ruleset[3];}
      if (values[i - 1] == 0 && values[i] == 1 && values[i + 1] == 1) {newValues[i] = ruleset[4];}
      if (values[i - 1] == 0 && values[i] == 1 && values[i + 1] == 0) {newValues[i] = ruleset[5];}
      if (values[i - 1] == 0 && values[i] == 0 && values[i + 1] == 1) {newValues[i] = ruleset[6];}
      if (values[i - 1] == 0 && values[i] == 0 && values[i + 1] == 0) {newValues[i] = ruleset[7];}
    }
    
    return newValues;
  }
  
}
