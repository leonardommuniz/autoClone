#!/bin/bash

# Source function
source ./scripts/selectOption.sh
repos=('teste')
data=$(curl -s https://api.github.com/users/fcofabyo/repos | awk '/full_name/{print $2}' | sed 's/^"//g' | sed 's/",$//g')
for repo in $repos
do
    repos+=($data)
done

selectOption "${repos[@]}"
repoIndex=$?
repoToBuild=${repos[$repoIndex]}
# Verifying if repo exists
[ -z ${repoToBuild} ] && echo "Erro ao obter a versão" && exit 1;
echo $repoToBuild
git clone https://github.com/${repoToBuild}.git