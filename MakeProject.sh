
mkdir $1

cd $1

git init

mkdir bin include lib share man info

echo $1 >> readme.md

touch .gitignore

git add .

git commit -m "Create initial structure."
