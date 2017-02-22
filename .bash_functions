qq ()
{
loc=$(readlink -f $(which q))
local QHOME=${loc%/l32/q}
QHOME=$QHOME rlwrap -c -s 99999 $loc $@ -c $LINES $COLUMNS
}

startq ()
{
qq $@
}
