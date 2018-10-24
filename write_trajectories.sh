
GROMDIR="/cvos/shared/apps/gromacs/bin"
MAINDIR="$(pwd)"

printf " > Enter PDB: "
read PDB
printf " > Enter step: "
read STEP
printf " > Enter a Name for the output: "
read NAME

$GROMDIR/make_ndx -f $MAINDIR/$PDB/$STEP/$PDB\_$STEP.gro -o index.ndx
 $GROMDIR/trjconv -f $MAINDIR/$PDB/$STEP/$PDB\_$STEP.trr -s $MAINDIR/$PDB/$STEP/$PDB\_$STEP.gro -n index.ndx -o $MAINDIR/trajectories/traj_$NAME.pdb