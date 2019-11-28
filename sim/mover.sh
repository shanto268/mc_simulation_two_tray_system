#Usage . mover.sh angle

cp muonTree01.root muonTree01_angle_$1_w_89.root
mv muonTree01_angle_$1_w_89.root /Users/ttumuon/hep/g4/g4user/MuonSC8/rp/v5/sim/experimen1_files/
echo Moved the file!
