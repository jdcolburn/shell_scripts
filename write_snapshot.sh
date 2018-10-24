
GROMDIR="/cvos/shared/apps/gromacs/bin"
MAINDIR="$(pwd)"

printf " > Enter PDB: "
read PDB
printf " > Enter frame to write: " 
read FRAMEF
printf " > Enter last frame to write: "
read FRAMEL
printf " > Enter name for pdb file: "
read NAME

$GROMDIR/trjconv -f $MAINDIR/$PDB/md/$PDB\_md.trr -s $MAINDIR/$PDB/md/$PDB\_md.gro -b $FRAMEF -e $FRAMEL -o $MAINDIR/trajectories/snap_$NAME.pdb # <<< 17