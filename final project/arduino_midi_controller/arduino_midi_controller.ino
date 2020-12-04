#include <MIDI.h>
#include "Controller.h"

MIDI_CREATE_DEFAULT_INSTANCE();

byte NUMBER_BUTTONS = 8;      
byte NUMBER_POTS = 2;         
byte NUMBER_MUX_BUTTONS = 8;  


Mux M1(5, 8, false);          
               



Pot PO1(A0, 0, 7, 5);     
Pot PO2(A2, 0, 9, 5);       


Pot *POTS[] {&PO1,&PO2};   


Button BU1(6, 0, 48, 1, 5 );  
Button BU2(7, 0, 49, 1, 5 );
Button BU3(8, 0, 50, 1, 5 );
Button BU4(9, 0, 51, 1, 5 );	
Button BU5(10, 0, 44, 1, 5 );
Button BU6(11, 0, 45, 1, 5 );
Button BU7(12, 0, 46, 1, 5 );
Button BU8(13, 0, 47, 1, 5 );




Button *BUTTONS[] {&BU1, &BU2, &BU3, &BU4, &BU5, &BU6, &BU7, &BU8};


Button MBO1(M1, 0, 0, 40, 1, 5);
Button MBO2(M1, 1, 0, 41, 1, 5);
Button MBO3(M1, 2, 0, 42, 1, 5);
Button MBO4(M1, 3, 0, 43, 1, 5);
Button MBO5(M1, 4, 0, 36, 1, 5);
Button MBO6(M1, 5, 0, 37, 1, 5);
Button MBO7(M1, 6, 0, 38, 1, 5);
Button MBO8(M1, 7, 0, 39, 1, 5);


Button *MUXBUTTONS[] {&MBO1, &MBO2, &MBO3, &MBO4, &MBO5, &MBO6, &MBO7,&MBO8};

void setup() {
  MIDI.begin(MIDI_CHANNEL_OFF); 
  Serial.begin(115200);


}

void loop() {
  Buttons_DI();
  Pots_AI();
  MuxButtons();

}



void Buttons_DI() {

  
  for (int i = 0; i < NUMBER_BUTTONS; i = i + 1) {
    byte message = BUTTONS[i]->getValue();

    
    if (message == 0) {
      switch (BUTTONS[i]->Bcommand) {
        case 0: 
          MIDI.sendNoteOn(BUTTONS[i]->Bvalue, 127, BUTTONS[i]->Bchannel);
          break;
        case 1: 
          MIDI.sendControlChange(BUTTONS[i]->Bvalue, 127, BUTTONS[i]->Bchannel);
          break;
        case 2: 
          if (BUTTONS[i]->Btoggle == 0) {
            MIDI.sendControlChange(BUTTONS[i]->Bvalue, 127, BUTTONS[i]->Bchannel);
            BUTTONS[i]->Btoggle = 1;
          }
          else if (BUTTONS[i]->Btoggle == 1) {
            MIDI.sendControlChange(BUTTONS[i]->Bvalue, 0, BUTTONS[i]->Bchannel);
            BUTTONS[i]->Btoggle = 0;
          }
          break;
      }
    }

    
    if (message == 1) {
      switch (BUTTONS[i]->Bcommand) {
        case 0:
          MIDI.sendNoteOff(BUTTONS[i]->Bvalue, 0, BUTTONS[i]->Bchannel);
          break;
        case 1:
          MIDI.sendControlChange(BUTTONS[i]->Bvalue, 0, BUTTONS[i]->Bchannel);
          break;
      }
    }
  }
}

void MuxButtons() {

  
  for (int i = 0; i < NUMBER_MUX_BUTTONS; i = i + 1) {

    MUXBUTTONS[i]->muxUpdate();
    byte message = MUXBUTTONS[i]->getValue();

    
    if (message == 0) {
      switch (MUXBUTTONS[i]->Bcommand) {
        case 0: //Note
          MIDI.sendNoteOn(MUXBUTTONS[i]->Bvalue, 127, MUXBUTTONS[i]->Bchannel);
          break;
        case 1: 
          MIDI.sendControlChange(MUXBUTTONS[i]->Bvalue, 127, MUXBUTTONS[i]->Bchannel);
          break;
        case 2: 
          if (MUXBUTTONS[i]->Btoggle == 0) {
            MIDI.sendControlChange(MUXBUTTONS[i]->Bvalue, 127, MUXBUTTONS[i]->Bchannel);
            MUXBUTTONS[i]->Btoggle = 1;
          }
          else if (MUXBUTTONS[i]->Btoggle == 1) {
            MIDI.sendControlChange(MUXBUTTONS[i]->Bvalue, 0, MUXBUTTONS[i]->Bchannel);
            MUXBUTTONS[i]->Btoggle = 0;
          }
          break;
      }
    }
    
    if (message == 1) {
      switch (MUXBUTTONS[i]->Bcommand) {
        case 0:
          MIDI.sendNoteOff(MUXBUTTONS[i]->Bvalue, 0, MUXBUTTONS[i]->Bchannel);
          break;
        case 1:
          MIDI.sendControlChange(MUXBUTTONS[i]->Bvalue, 0, MUXBUTTONS[i]->Bchannel);
          break;
      }
    }
  }
}


void Pots_AI() {
  for (int i = 0; i < NUMBER_POTS; i = i + 1) {
    byte potmessage = POTS[i]->getValue();
  
    if (potmessage != 255) MIDI.sendControlChange(POTS[i]->Pcontrol, potmessage, POTS[i]->Pchannel);
  }
  
}
 
