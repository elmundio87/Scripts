val=`echo $P4INFO | grep "Client root" | sed 's|Client root: ||'` 
p4 sync $1
echo $1 | sed "s|//|$val|" | xargs dirname | xargs open -a /Applications/iTerm.app
