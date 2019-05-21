# Git

- [Useful commands](http://orga.cat/posts/most-useful-git-commands)
- [Clean-up outdated branches](http://railsware.com/blog/2014/08/11/git-housekeeping-tutorial-clean-up-outdated-branches-in-local-and-remote-repositories/)

---

## Initialize a repo
```
git init
git add .
git commit -m 'Initial import.'
git remote add origin ${URL}
git push --set-upstream origin master
```

## Show commit log with branches and tags
```
$ git log --graph --all --decorate
```

## Clean-up local branches
```
$ git branch --merged
$ git branch -d merged-branch-name
$ git branch --no-merged
$ git branch -D un-merged-branch-name
```

## Prune tracking branches
```
$ git branch -r
$ git remote prune origin 
# Or just fetch with -p
$ git fetch -p
```

## List merged branches on origin
```
$ for branch in `git branch -r --merged | grep -v HEAD`; do \
	echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; \
done | sort -r
```

## See commit history for the last two commits, including the diff
```
git log -p -2
```

## Squash all but first commit
```
$ git rebase -i $(git rev-list --max-parents=0 HEAD)
# Change all but the first "pick" to "squash"
$ git push --force
```

## Pull a --force pushed branch
```
git fetch
git reset origin/master --hard
```

## Change origin
```
$ git remote set-url origin git://$URL
```

## Configuration
```
# Project-specific
$ git config user.name "andornaut" \
    && git config user.user "andornaut" \
    && git config user.email "andornaut@users.noreply.github.com"
```

## Convert a mercurial repo to git

[hg-fast-export](https://github.com/frej/fast-export)

```
mkdir repo-git
cd repo-git
git init
hg-fast-export.sh -r <repo> -B <branches_map> -A <users_map>
```

## Ignore/unignore changes to a file

```
# Ignore
git update-index --assume-unchanged ${filepath}

# Unignore
git update-index --no-assume-unchanged ${filepath}
```

## Delete tag

```
git tag -d v0.0.1
git push origin :refs/tags/v0.0.1
```
