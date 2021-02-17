
echo $1 >> mkdir Cooper

cd Cooper

git init

mkdir bin include lib share man info

echo "Name" >> readme.md

touch .gitignore

git add -A

git commit -m "Create initial structure."
