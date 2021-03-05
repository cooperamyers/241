
mkdir $1

cd $1

mkdir bin include lib share man info

echo $1 >> readme.md

touch .gitignore

git add -A

git commit -m "Create initial structure."
