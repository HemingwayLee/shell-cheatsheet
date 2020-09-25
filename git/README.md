# git
  
* check commits and check what this commit was changing  
```
git log --pretty=oneline
git diff COMMIT_HASH_CODE^!
```

* Create a feature branch  
```
git checkout -b FEATURE_BRANCH_NAME
git add .
git commit -m "My branch is ready"
git push origin FEATURE_BRANCH_NAME
```

* Remove files from remote after adding .gitignore  
```
git rm --cached `git ls-files -i --exclude-from=.gitignore` 
git commit -m 'Removed all files that are in the .gitignore' 
git push origin master
```

* Discard all local changes  
```
git reset --hard
```

* changes -> add -> commit
* undo changes
```
git checkout -- file.py
```

* undo add
```
git reset file.py
```

* undo commit
```
git revert --no-commit XXXXXX HEAD
git commit
git push
```

* Diff local and remote  
```
git diff master origin/master
```

* mirror  
```
cd old-repo
git push --mirror https://github.com/new-repo.git
```

* get only `20` commits
```
git clone --depth 20 https://github.com/tesseract-ocr/tesseract.git
```

https://stackoverflow.com/questions/7927230/remove-directory-from-remote-repository-after-adding-them-to-gitignore

