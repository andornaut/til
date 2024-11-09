# Git

* [On undoing, fixing, or removing commits in git](https://sethrobertson.github.io/GitFixUm/fixup.html)

* [Useful commands](http://orga.cat/posts/most-useful-git-commands)
* [Clean-up outdated branches](http://railsware.com/blog/2014/08/11/git-housekeeping-tutorial-clean-up-outdated-branches-in-local-and-remote-repositories/)

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
git log --graph --all --decorate
```

## Create a patch
```
git diff --patch-with-raw > out.patch
git diff HEAD~1 --relative
```

## Create a symbolic branch link
```
git symbolic-ref refs/heads/master refs/heads/main
```

## Fetch changes from origin/master without checking out master

[Git alias](https://github.com/andornaut/dotfiles/blob/dd397e2966df7ba97b7b2043020bdd958d32f0a3/%24HOME/.config/git/config#L15)

```
git checkout --detach --quiet HEAD && git fetch origin master:master && git checkout --quiet -
```

## Clean-up local branches
```
git branch --merged
git branch -d merged-branch-name
git branch --no-merged
git branch -D un-merged-branch-name
```

## Prune tracking branches

* [Fix `error: cannot lock ref`](https://stackoverflow.com/a/62429686)

```
git gc --prune=now
git prune
git remote prune origin

git branch -r
git remote prune origin

# Or just fetch with -p
git fetch -p
```

## List merged branches on origin
```
for branch in `git branch -r --merged | grep -v HEAD`; do \
	echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; \
done | sort -r
```

## See commit history for the last two commits, including the diff
```
git log -p -2
```

## Squash all but first commit
```
git rebase -i $(git rev-list --max-parents=0 HEAD)
# Change all but the first "pick" to "squash"
git push --force

# Alternatively:
git rebase -i --root
```

## Pull a --force pushed branch
```
git fetch
git reset origin/$(git branch --show-current) --hard
```

## Change origin URL
```
git remote set-url origin git://$URL
```

## Project-specific configuration

```
git config user.name "andornaut" \
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

## Undo commits

* [How-to](https://docs.gitlab.com/ee/topics/git/numerous_undo_possibilities_in_git/)

```
# Revert a merge commit
git revert -m 1 ${MERGE_COMMIT_SHA}
```

## Get default branch name

* [Stackoverflow](https://stackoverflow.com/questions/28666357/git-how-to-get-default-branch)
* [Dotfiles Git config](https://github.com/andornaut/dotfiles/blob/master/%24HOME/.config/git/config)

```
[alias]
    dbr = !bash -c 'set -o pipefail && git symbolic-ref refs/remotes/origin/HEAD 2>/dev/null|cut -d / -f 4-||git remote show origin 2>/dev/null|awk \"/HEAD branch/ {print \\$NF}\"||echo main'
```

## Set default branch

[Stackoverflow](https://stackoverflow.com/a/66895556) - Allow git to set your origin/HEAD, determining what branch to use automatically

```
git remote set-head origin --auto
```

## Github

* [GitHub markdown tricks](https://notes.aliciasykes.com/36402/github-markdown-tricks)

### Collapsable section markdown

* [Gist](https://gist.github.com/joyrexus/16041f2426450e73f5df9391f7f7ae5f)

```
<details><summary>Click here to expand</summary>

This section is hidden until the above is clicked.
</details>
```

### Search

* [GitHub searching-issues-and-pull-requests](https://docs.github.com/en/github/searching-for-information-on-github/searching-issues-and-pull-requests)
* [GitHub using-search-to-filter-issues-and-pull-requests](https://docs.github.com/en/github/managing-your-work-on-github/using-search-to-filter-issues-and-pull-requests)
* [GitHub Filtering and searching issues and pull requests](https://docs.github.com/en/issues/tracking-your-work-with-issues/filtering-and-searching-issues-and-pull-requests)

```
# What
archived:false
is:closed
is:pr,issue

# Who
org:wmgtech
author:andornaut
involves:andornaut
reviewed-by:andornaut
# PRs where andornaut is a reviewer and not author
reviewed-by:andornaut -author:andornaut

# Date/time
created:>=2024-12-31 
merged:2024-01-01..2024-12-31
```

**Example searches:**
* [Pull requests `org:wmgtech is:pr author:andornaut`](https://github.com/pulls?q=org%3Awmgtech+is%3Apr+author%3Aandornaut)
* [Pull requests `org:wmgtech is:pr involves:andornaut`](https://github.com/pulls?q=org%3Awmgtech+is%3Apr+involves%3Aandornaut)
* [Pull requests `org:wmgtech is:pr reviewed-by:andornaut -author:andornaut`](https://github.com/pulls?q=org%3Awmgtech+is%3Apr+reviewed-by%3Aandornaut+-author%3Aandornaut)

### Tips

* [Configure schedule reminders for PR reviews and other things](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-your-membership-in-organizations/managing-your-scheduled-reminders)
* Add a `.patch` extension to a GitHub commit, diff, or PR URL to download a raw git patch, eg. https://github.com/andornaut/til/commit/5bbb06b4ce76443f9217546ee57738ae2ab4cd9a.patch
