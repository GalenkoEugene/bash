#! /bin/bash

echo $0 # The filename of the current script.|
echo $n # The Nth argument passed to script was invoked or function was called.|
echo $# # The number of argument passed to script or function.|
echo $@ # All arguments passed to script or function.|
echo $* # All arguments passed to script or function.|
echo $? # The exit status of the last command executed.|
echo $$ # The process ID of the current shell. For shell scripts, this is the process ID under which they are executing.|
echo $! # The process number of the last background command.|


echo "Script Name: $0"
function func_with_args {
    for var in $*
    do
        let i=i+1
        echo "The \$${i} argument is: ${var}"
    done
    echo "Total count of arguments: $#"
}
func_with_args We are argument


# $@ and $* have different behavior when they were enclosed in double quotes.
echo -e "\nSecond function:"
function func {
    echo "--- \"\$*\""
    for ARG in "$*"
    do
        echo $ARG
    done

    echo "--- \"\$@\""
    for ARG in "$@"
    do
        echo $ARG
    done
}
func We are argument
