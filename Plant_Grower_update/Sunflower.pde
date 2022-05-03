class Sunflower extends Plant {
  int stemLength;
  int stemThickness;
  int leafNum;
  ArrayList<Leaf> leaves;
  boolean dying;
 

  public Sunflower(String n, float mh, float gf, int fR, int fG, int fB){
    super( n,  mh,  gf,  fR,  fG,  fB);
    this.leaves = new ArrayList<Leaf>();
    this.foliage = color(1,1,1);
    this.flowerFoliage = color(3,3,3);
    this.lifespan = 400;
    this.dying = false;
  }
  void grow() {
    //Name of plant
    textSize(32);
    fill(255);
    text(name, 40, 60);
    
    
    //Plant dying instances 
    if(!dying && time != 0) {
      if (fertVal > 1){
        //death();
      }
      /*else if (w < 2 && s > 3){
        death();
      }
      else if (f > 4 && w < 1 && s < 1){
        death();
      }*/
    }
    // Attributes based on dying or not
    /*if(dying) {
      time = lifespan*2-time;
      foliage = color(127, 127, 0);
      this.flowerFoliage = color(191, 191, 0);
    } else {
      this.foliage = color(127, 255, 0);
      this.flowerFoliage = color(255, 255, 0);
    }
    
    // Render and create new leaves
    if(stemLength > (leafNum+1)*100) {
      leaves.add(new Leaf(600-(leafNum+2)*100,-PI/6,0.5,this));
      leaves.add(new Leaf(600-(leafNum+2)*100,-5*PI/6,0.5,this));
      leafNum++;
      println(600-(leafNum+2)*100,"newPlant");
    }
    for(int i = 0; i < leaves.size(); i++) {
        leaves.get(i).grow();
    }
    
    // Render stem and flower
    stemLength = time;
    stemThickness = 2+(time/50);
    fill(foliage);
    rect(midX-stemThickness,groundLevel,stemThickness*2,-stemLength);
    if(time > 300) {
      fill(this.flowerFoliage);
      pushMatrix();
      translate(midX,groundLevel-stemLength);
      for(int i = 0; i < 16; i++) {
        rotate(i*PI/8);
        ellipse(time/4-50,0,time/15,time/20);
      }
      popMatrix();
      fill(63, 31, 0);
      circle(midX,groundLevel-stemLength,time/2-100);
    } else if(time > 200) {
      fill(this.foliage);
      circle(midX,groundLevel-stemLength,time/2-100);
    }
    if(dying) {
      if(time <= 0) {
        //plants.remove(plants.indexOf(this));
        //plants[whichPlant] = null;
      }
      time = lifespan*2-time;
    }
    if(time < lifespan){
      this.exactTime += growth();
    } else if(dying) {
      exactTime++;
    }
    time = round(exactTime);
  }
  void death() {
    lifespan = time;
    dying = true;
  }
}
*/}}
