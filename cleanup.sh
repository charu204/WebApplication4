#!/bin/bash 
echo 'Entering Bash script'
git pull
# List the remote branches which don't consists of commits not merged
#git branch -r --merged | grep -v 'origin/HEAD'
for k in $(git branch -r --merged | grep -v 'origin/HEAD' | grep -v 'master' | grep -v 'origin/master' | grep -v 'charu' ); 
do
  if [ -z "$(git log -1 --after='1 minutes ago' -s $k)" ]; then
    echo $k >> remote_file
    remote_branch=$(echo $k | sed 's#origin/##' )
    #git push origin --delete ${remote_branch} #--delete for fully merged branch -D
  fi
done
echo
"##[command]##################################################
#############################################################
#####################"
echo
"##[command]##################################################
#############################################################
#####################"
echo
"##[command]##################################################
#############################################################
#####################"
echo "##[command]+++++++++++++++++++++++1+ year old remote branches to
be deleted which has no pending merge++++++++++++++++++++++"
cat remote_file
echo
#############################################################
#############################################################
##########
echo
#############################################################
#############################################################
##########
echo
#############################################################
#############################################################
##########
echo
#############################################################
#############################################################
#########

10

A

echo
"##[section]####################################################
#############################################################
###################"
echo
"##[section]####################################################
#############################################################
###################"
echo
"##[section]####################################################
#############################################################
###################"
echo
"##[section]####################################################
#############################################################
###################"
echo "##[section]====================Remaining remote branches after
deletion====== "
