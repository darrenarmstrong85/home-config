startq ()
{
rlwrap -c -s 99999 $(which q) "$@"
}