#note

find -type f -exec chmod 644 {} \;
find -type d -exec chmod 755 {} \;
vim :%!xxd

##########################
#GIT common commands
##########################
git clone [url]
git pull [repo_name] [branch]
git remote -v
git branch -a
git status
git add ..
git commit -m "log"
git log -3
git diff ..
git remote add [repo_name] [url]
git remote remove [repo_name]
git push [repo_name] [branch]

git init
git remote add origin http://xxx.git
git fetch
git config core.sparsecheckout true
git config --list
echo '/build/*sh' >> .git/info/sparse-checkout
git reset --hard

L1 <remote repository>
L2 <local repository>
L3 <staging area>
L4 <working copy>

[Git Arch]
remote --pull--> local+working
remote --fetch--> local --checkout/merge--> working
working --add--> staging --commit--> local --push--> remote 
local --reset--soft--> local 
local --reset--mixed--> local+staging
local --reset--hard--> local+staging+working

rebase...

[Merge dev to master]
git checkout dev
git pull
git checkout master
git merge dev
git push -u origin master

[Merge master to dev]
git checkout master 
git pull 
git checkout dev
git merge master 
git push -u origin dev

git-bash: ssh-keygen -t rsa -b 4096 -C "qiumengda"
##########################
# Git local repository
##########################
git init
git add .
git commit -m "log"

git clone H:\01.Personal\test
git pull

git init
git remote add origin H:\01.Personal\test
git pull
git remote remove origin 
git remote add origin H:\01.Personal\test1
git remote set-url origin ssh://git@github.com/qiumengda/xxx.git
git pull 

git submodule add --name xxx https://xxxxx/xxx/xxx.git
git submodule init
git submodule update
git submodule foreach "git pull origin main"
git submodule deinit xxx

##########################
#SVN common commands
##########################
svn co [url]
svn up -rxxx
svn log -l3
svn st
svn diff
svn ci -m "log"
svn up --set-depth empty
svn revert --depth infinity .

##########################
#GIT-SVN common commands
##########################
git svn clone [url]
git svn log -3
git svn rebase
git remote add [repo_name] [url]
git remote remove [repo_name]
git push [repo_name] [branch]


