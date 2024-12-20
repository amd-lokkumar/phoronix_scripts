 
export LIBRARY_PATH=/usr/lib64:/usr/lib/x86_64-linux-gnu:/usr/lib:/usr/lib32:$LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/lib64:/usr/lib/x86_64-linux-gnu:/usr/lib:/usr/lib32:$LD_LIBRARY_PATH
export PATH=/home/amd/aocc-compiler-5.0.0/bin:$PATH
export PATH=/home/amd/aocc-compiler-5.0.0/share/opt-viewer:$PATH
export LIBRARY_PATH=/home/amd/aocc-compiler-5.0.0/lib:/home/amd/aocc-compiler-5.0.0/lib32:$LIBRARY_PATH
export LD_LIBRARY_PATH=/home/amd/aocc-compiler-5.0.0/ompd:/home/amd/aocc-compiler-5.0.0/lib:/home/amd/aocc-compiler-5.0.0/lib32:$LD_LIBRARY_PATH

if [[ -z $C_INCLUDE_PATH ]];then
    export C_INCLUDE_PATH=/home/amd/aocc-compiler-5.0.0/include
else
    export C_INCLUDE_PATH=$C_INCLUDE_PATH:/home/amd/aocc-compiler-5.0.0/include
fi


if [[ -z $CPLUS_INCLUDE_PATH ]];then
    export CPLUS_INCLUDE_PATH=/home/amd/aocc-compiler-5.0.0/include
else
    export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/home/amd/aocc-compiler-5.0.0/include
fi

