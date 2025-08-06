#!/bin/bash 

# to check branch 
branchName="$(git branch | grep -i "*" | awk '{print $2}')"
echo "$branchName"
if [ "$branchName" != "forMerge" ]; then 
    echo "please change branch and save code in forMerge branch";
else
    echo "Name: HarshalSir" > file1
    git add .
    git commit -m "One Try 5"
    git push origin forMerge 

    git checkout main 
    echo "Name: NikhilSir" > file1
    git add .
    git commit -m "create conflict another try 6"
    git push origin main    

fi

