#!/bin/bash 

# to check branch 
branchName="$(git branch | grep -i "*" | awk '{print $2}')"
echo "$branchName"
if [ "$branchName" != "forMerge" ]; then 
    echo "please change branch and save code in forMerge branch";
else
    echo "Name: HarshitSir" > file1
    git add .
    git commit -m "One Try 7"
    git push origin forMerge 

    git checkout main 
    echo "Name: Nikitama'am" > file1
    git add .
    git commit -m "create conflict another try 7"
    git push origin main    
    git merge forMerge

fi

