export TOOLSPATH=$PROJECTS/devtools

if [ -n $TOOLSPATH ]
then
    export PATH="$TOOLSPATH/bin:$PATH"
else 
    echo 'no devtools'
fi
