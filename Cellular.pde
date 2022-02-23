class Cellular {
  
  boolean[] values;
  boolean[] ruleset;
  int generation, max_gens;
  
  Cellular() {
    ruleset = int2bool(RULE);
    values = new boolean[width / SCALE];
    reset();
    generation = 0;
    max_gens = height / SCALE;
  }
  
  void reset() {
    for (int i = 0; i < values.length; i++) values[i] = random(1) >= 0.50;
  }
  
  void total() {
    while(!finished()) {
      cellulate();
    }
  }
  
  void cellulate() {
    generation++;
    boolean[] newValues = new boolean[values.length];
    for (int i = 0; i < values.length; i++) {
      // Draw the values for the current row
      if (values[i]) square(i * SCALE, generation * SCALE, SCALE);
      // Determine values for the next row
      if (i > BOUND && i < values.length - BOUND) newValues[i] = ruleset[bool2int(values, i)];
    }
    values = newValues;
  }
  
  boolean finished() {
    return generation > max_gens;
  }
  
}
