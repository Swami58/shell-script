#!/bin/bash

COURSE="Devops from current script"
echo "before calling the othewr script course,: $COURSE"

echo "process id of current script $$"
#./otherscript.sh
source ./otherscript.sh
echo "After calling the othewr script course,: $COURSE"