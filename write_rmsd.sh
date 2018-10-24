
GROMDIR="/cvos/shared/apps/gromacs/bin/"
MAINDIR="$(pwd)"

function get_rmsd {
#$GROMDIR/make_ndx -f $PDB\_md.gro -o index.ndx

$GROMDIR/trjconv -s $MAINDIR/$PDB/md/$PDB\_md.tpr -f $MAINDIR/$PDB/md/$PDB\_md.trr -o $MAINDIR/$PDB/md/$PDB\_md_noPBC.trr -pbc mol -ur compact <<< 0

$GROMDIR/g_rms -s $MAINDIR/$PDB/md/$PDB\_md.gro -f $MAINDIR/$PDB/md/$PDB\_md_noPBC.trr -o $MAINDIR/analysis/rmsd_$PDB.xvg
 
}

printf " > Enter PBD: "
read PDB

get_rmsd


xmgrace $MAINDIR/analysis/rmsd_$PDB.xvg &