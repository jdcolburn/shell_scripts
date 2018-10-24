
GROMDIR="/cvos/shared/apps/gromacs/bin/"
MAINDIR="$(pwd)"

function get_dist {
$GROMDIR/make_ndx -f $PDB\_md.gro -o index.ndx
$GROMDIR/g_dist -f $PDB\_md.trr -s $PDB\_md.tpr -n index.ndx -o $MAINDIR/analysis/$NAME\_$PDB.xvg
}

printf " > Enter PBD: "
read PDB
printf " > Enter a Name: "
read NAME

cd $MAINDIR/$PDB/md
get_dist
cd $MAINDIR

