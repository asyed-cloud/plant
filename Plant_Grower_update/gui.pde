/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw2(PApplet appc, GWinData data) { //_CODE_:variableSliders:296720:
  appc.background(230);
} //_CODE_:variableSliders:296720:

public void sunlightChange(GCustomSlider source, GEvent event) { //_CODE_:sunlight:535623:
} //_CODE_:sunlight:535623:

public void waterChange(GCustomSlider source, GEvent event) { //_CODE_:water:226766:
} //_CODE_:water:226766:

public void fertilizerChange(GCustomSlider source, GEvent event) { //_CODE_:fertilizer:497119:
} //_CODE_:fertilizer:497119:

public void button1_click1(GButton source, GEvent event) { //_CODE_:addNewPlant:257619:
  addNewPlantsWindow.setVisible(true);
} //_CODE_:addNewPlant:257619:

public void changeVariablesClicked(GButton source, GEvent event) { //_CODE_:changeVariables:941190:
  fertVal = fertilizer.getValueF();
  waterVal = water.getValueF();
  sunVal = sunlight.getValueF();
} //_CODE_:changeVariables:941190:

public void pauseClicked(GButton source, GEvent event) { //_CODE_:pause:591619:
  if(isPaused){
    isPaused = false;
    pause.setText("Pause");
  }
  else {
    isPaused = true;
    pause.setText("Unpause");
  }
  
} //_CODE_:pause:591619:

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:addNewPlantsWindow:484821:
  appc.background(230);
} //_CODE_:addNewPlantsWindow:484821:

public void plantNameChanger(GTextField source, GEvent event) { //_CODE_:insertPlantName:271104:
  println("insertPlantName - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:insertPlantName:271104:

public void addPlantClicked(GButton source, GEvent event) { //_CODE_:addPlantButton:643431:
  addNewPlantsWindow.setVisible(false);
  
} //_CODE_:addPlantButton:643431:

public void plantTypeSelected(GDropList source, GEvent event) { //_CODE_:plantTypeSelect:266769:
  println("plantTypeSelect - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:plantTypeSelect:266769:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  variableSliders = GWindow.getWindow(this, "Window title", 0, 0, 480, 200, JAVA2D);
  variableSliders.noLoop();
  variableSliders.setActionOnClose(G4P.KEEP_OPEN);
  variableSliders.addDrawHandler(this, "win_draw2");
  sunlight = new GCustomSlider(variableSliders, 15, 20, 213, 40, "grey_blue");
  sunlight.setLimits(0.0, 0.0, 5.0);
  sunlight.setNbrTicks(10);
  sunlight.setNumberFormat(G4P.DECIMAL, 0);
  sunlight.setOpaque(false);
  sunlight.addEventHandler(this, "sunlightChange");
  sunlightLabel = new GLabel(variableSliders, 14, 14, 80, 20);
  sunlightLabel.setText("Sunlight");
  sunlightLabel.setOpaque(false);
  water = new GCustomSlider(variableSliders, 242, 21, 222, 40, "grey_blue");
  water.setLimits(0.0, 0.0, 5.0);
  water.setNbrTicks(5);
  water.setNumberFormat(G4P.DECIMAL, 0);
  water.setOpaque(false);
  water.addEventHandler(this, "waterChange");
  waterLabel = new GLabel(variableSliders, 244, 13, 80, 20);
  waterLabel.setText("Water");
  waterLabel.setOpaque(false);
  fertilizer = new GCustomSlider(variableSliders, 14, 92, 215, 40, "grey_blue");
  fertilizer.setLimits(0.0, 0.0, 5.0);
  fertilizer.setNumberFormat(G4P.DECIMAL, 0);
  fertilizer.setOpaque(false);
  fertilizer.addEventHandler(this, "fertilizerChange");
  fertilizerLabel = new GLabel(variableSliders, 14, 84, 80, 20);
  fertilizerLabel.setText("Fertilizer");
  fertilizerLabel.setOpaque(false);
  addNewPlant = new GButton(variableSliders, 15, 146, 214, 39);
  addNewPlant.setText("Add New Plant");
  addNewPlant.addEventHandler(this, "button1_click1");
  changeVariables = new GButton(variableSliders, 243, 93, 108, 38);
  changeVariables.setText("Save Values");
  changeVariables.addEventHandler(this, "changeVariablesClicked");
  pause = new GButton(variableSliders, 361, 93, 103, 38);
  pause.setText("Pause");
  pause.addEventHandler(this, "pauseClicked");
  addNewPlantsWindow = GWindow.getWindow(this, "Add New Plant", 0, 0, 600, 100, JAVA2D);
  addNewPlantsWindow.noLoop();
  addNewPlantsWindow.setActionOnClose(G4P.KEEP_OPEN);
  addNewPlantsWindow.addDrawHandler(this, "win_draw1");
  insertPlantName = new GTextField(addNewPlantsWindow, 15, 19, 223, 30, G4P.SCROLLBARS_NONE);
  insertPlantName.setText("Plant Name");
  insertPlantName.setOpaque(true);
  insertPlantName.addEventHandler(this, "plantNameChanger");
  addPlantButton = new GButton(addNewPlantsWindow, 484, 22, 80, 30);
  addPlantButton.setText("Add Plant");
  addPlantButton.addEventHandler(this, "addPlantClicked");
  plantTypeSelect = new GDropList(addNewPlantsWindow, 250, 20, 206, 76, 3, 10);
  plantTypeSelect.setItems(loadStrings("list_266769"), 0);
  plantTypeSelect.addEventHandler(this, "plantTypeSelected");
  variableSliders.loop();
  addNewPlantsWindow.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow variableSliders;
GCustomSlider sunlight; 
GLabel sunlightLabel; 
GCustomSlider water; 
GLabel waterLabel; 
GCustomSlider fertilizer; 
GLabel fertilizerLabel; 
GButton addNewPlant; 
GButton changeVariables; 
GButton pause; 
GWindow addNewPlantsWindow;
GTextField insertPlantName; 
GButton addPlantButton; 
GDropList plantTypeSelect; 
