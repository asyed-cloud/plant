class Leaf {
  int leafHeight, leafWidth;
  int time;
  float exactTime;
  int posY;
  float sizeFactor;
  float angle;
  
  Plant stem;
  Leaf(int posY, float angle, float sizeFactor, Plant st) {
    this.posY = posY;
    this.sizeFactor = sizeFactor;
    this.angle = angle;
    this.stem = st;
    this.time = 0;
    this.exactTime = 0;
  }
  void grow() {
    //Grows at y-position
    if(stem.dying) {
      posY++;
      leafHeight--;
      if(leafHeight <= 0) {
        //stem.leaves.remove(stem.leaves.indexOf(this));
        return;
      }
    } else {
      leafWidth = int(time*sizeFactor);
      leafHeight = int(time/2*sizeFactor);
    }
    fill(stem.foliage);
    pushMatrix();
    translate(midX, posY);
    rotate(angle);
    ellipse(0+leafWidth/2,0,leafWidth,leafHeight);
    popMatrix();
    if(this.stem.time < this.stem.lifespan) {
      exactTime += stem.growth();
      time = round(exactTime);
    }
  }
}
