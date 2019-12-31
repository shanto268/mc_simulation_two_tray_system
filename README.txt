# Current version: This configuration has the 4 tray 2 layer sytem detector

# monte_carlo_sim_muon_detector-wtp
This directory has all the C++, ROOT, and GEANT4 code needed for the Monte Carlo simulation of our Muon Detector and the Water Tower at Reese Technology Center. There also the C++ code for the Muon Image and Track Analysis.

# EXPERIMENTAL OVERVIEW:
   
        The High Energy Physics Group, led by Dr. Shuichi Kunori at Texas Tech University, has created a portable prototype
muon ray telescope which in the experiment is used to measure the muon flux at any given angle. Our experiment concerns with
the use of this telescope to create tomographical images; we point the telescope towards a Water Tower located at the Reese 
Technology Center and record the muon flux for a period of time. Using this data and the known behavior of muon physics, we 
generate a shadow image of the water tower. This image gives us information of the structural integrity of the water tower, 
which basically means we can infer the different materials used in the construction of the tower and the level of water inside 
the tower.

# PURPOSE OF MONTE CARLO:

        The purpose of this program is to create a Monte Carlo simulation of this experiment. The program uses input from the 
Cosmic-Ray Shower Generator (CRY) module and processing engines from CERN's ROOT and GEANT4 libraries to recreate the 
experimental set up. The result of our program gives us insight about the efficiency of our muon telescope and test the 
integrity of our experimental data. We are constantly simulating different test cases for our simulation to learn more on how 
to make muon tomography more efficient and test out different materials and design to make a telescope with higher spatial 
resolution.


#Running the program:

MuonSC8 Simulation   
====================

[1] Setup

1.1 Untar the MuonSC8 simulation package by

1.2 Modify the environments in 
muonSetupMac.sh for Mac
muonSetupHPCC.sh  for HPCC

[2] build and run Simulation in "sim" directory

2.0  set environmnet by
. muonSetupMac.sh

2.1  build the simulation program
make

2.2  set the executable in runG4CRY_batch.sh

2.3  run the program
. runG4CRY_batch.sh

The number of events to simulate is set by 
/run/beamOn 1000
in runG4CRYbatch_run01.mac

The output root nuple file is
muonTree01.root

The geometry of the detector is defined in
src/B4DetectorConstruction.cc

The output data is in the root ntuple format and defined in
src/B4aEventAction.cc
src/MuonTree.cc

The cosmic muons are gerated by CRY and transfered to GEANT4 via
src/PrimaryGeneratorAction.cc


[3] analysis of simulated events in "ana" directory

3.0  set the environment by
. muonSetupMac.sh  in the "sim" directory

3.1  copy nutple file from the "sim" directory

3.2  compile and run the analysis program
. runana.sh

The output histogram file is "hist_muon01.root".
The analysis code is "muonAnalysis3.cc"
