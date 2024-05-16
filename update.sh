#!/bin/bash

echo "======generating LaTeX========"

cabal run resume --verbose=0 -- en >> latex/resume.tex
cabal run resume --verbose=0 -- cn >> latex/resume-cn.tex
cabal run resume --verbose=0 -- elab >> latex/resume-elab.tex

echo "=======building LaTeX========="

make -C latex >> latex/make.log
mv latex/*.pdf .
make -C latex clean-tex

echo "====removing useless files===="

rm -rf .git
rm .DS_Store
rm *~
rm latex/*.aux
rm latex/*.out
rm latex/*.fls
rm latex/*.fdb_latexmk
rm latex/*.xdv
rm latex/*.log

echo "===initialize git repository=="

git init
git remote add origin https://github.com/by-cloud/resume.git

echo "======committing changes======"

git add *
git add .gitignore
git commit -a -m "refresh everything" >> commit.log

echo "=====pushing, please wait====="

git push --force origin HEAD
git status

echo "========all tasks done========"

rm *.log
