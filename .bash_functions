startq ()
{
loc=$(readlink -f $(which q))
local QHOME=${loc%/l32/q}
QHOME=$QHOME rlwrap -c -s 99999 $(which q) "$@"
}