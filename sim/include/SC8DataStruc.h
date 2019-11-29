#ifndef SC8DataStruc_h
#define SC8DataStruc_h 1

struct SC8Particle {
   int pid;
   int trackid;
   double px;
   double py;
   double pz;
   double ma;
   double x;
   double y;
   double z;
   double steplength;
   double edep; 
};

struct SC8edep {
  double SBAR[20];
  double TRAY[2];
  double MStepBar[20]; // changed by SAS 29/11 //array to store the step lengths of muons in the scintillator bars
  double MStepTray[2]; // changed by SAS 29/11 //array to store the step lengths of muons in the trays
//  double mEdepWater;
//  float mEdepWall;
//  float mLengthWater;
//  float mLengthWall; 

};

#endif
