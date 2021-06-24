# git

## `git tag`
* Show all tags
```
git tag
```

* Add a new tag
```
git tag -a v1.0 -m "my first version"
```

* Push the tag to remote
```
git push origin v1.0
```

* After that, we can create a release based on tag

## `git log`
```
commit 0f65e348261b93126748c4fc51ac6247a1b87770 (HEAD -> master, origin/master)
Author: LeeHemingway <coherence0815@gmail.com>
Date:   Wed Oct 7 18:35:14 2020 +0900

    change rate

commit fbec5417476da8821dc357cebbe541aeb0a7f25c
Author: LeeHemingway <coherence0815@gmail.com>
Date:   Sun Oct 4 23:35:54 2020 +0900

    update page
```

## `git log --pretty=oneline`
```
0f65e348261b93126748c4fc51ac6247a1b87770 (HEAD -> master, origin/master) change rate
fbec5417476da8821dc357cebbe541aeb0a7f25c update page
95e74c6a6fca670fbfab17c0abf6c2db018d42b0 affiliate
a9455fc40df5ab2e6b2a0a30789aba3655eea95c add watermark
```

## `git log --name-status --pretty=oneline`
```
0f65e348261b93126748c4fc51ac6247a1b87770 (HEAD -> master, origin/master) change rate
M       affiliate.html
fbec5417476da8821dc357cebbe541aeb0a7f25c update page
M       affiliate.html
95e74c6a6fca670fbfab17c0abf6c2db018d42b0 affiliate
A       affiliate.html
a9455fc40df5ab2e6b2a0a30789aba3655eea95c add watermark
A       healthTable2png.html
df0471d47674a8db8ada5f663afa6db13c8fce10 rename
R100    lazypackage.html        button2png.html
R100    map_for_blog.html       map2png.html
```

* see diff between 2 commit 
```
git diff <commit_hash_code_a> <commit_hash_code_b> 
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


## go to specific commit and push
```
git reset --hard <commidId> && git push --force
```


