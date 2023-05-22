git config --global user.name "lnykyks"
git config --global user.email "lnykyks@gmail.com"

ssh-keygen -t rsa -C "lnykyks@gmail.com"

git config --global -l # check info

# init folder, then push
git init
git remote add origin "the link"# push
git add .
git commit -m "init" # use init to create?
git push -u origin master //将主分支本地的内容推送到GitHub上的远程仓库上

# pull from github
git remote add origin <你github上仓库的url>
git pull origin branch_name # default = master

git clone git@github.com:lnykyks/Logseq.git # for example
git clone --branch v0.2.1 <link> <target dir>

# detach
git remote remove origin # 或者直接删掉.git文件

# authorization
git -T git@github.com


# new branch
git branch branch_name
git checkout branch_name
git push origin branch_name
git checkout --track origin/branch_name # 拉取其他分支，不过clone的时候就是-b参数了
git push origin <local_branch_name>:<remote_branch_name> # 当本地branch不是要push的branch

# delete branch
# TODO
