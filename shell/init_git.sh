git config --global user.name "lnykyks"
git config --global user.email "lnykyks@gmail.com"

ssh-keygen -t rsa -C "lnykyks@gmail.com"

git config --global -l # check info

# init folder, then push
git add .
git init
git remote add origin "the link"# push
git push -u origin master //将主分支本地的内容推送到GitHub上的远程仓库上

# pull from github
git remote add origin <你github上仓库的url>
git pull origin master

git clone git@github.com:lnykyks/Logseq.git # for example
