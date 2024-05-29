# NPM

* [./JavaScript](./javascript.md)

## Install Node and NPM using NVM

* [NVM](https://github.com/nvm-sh/nvm)

```
nvm install v16
nvm alias stable v16
nvm alias default stable
nvm use default
```

## Linking

* [npm config - prefix](https://docs.npmjs.com/misc/config#prefix)
* [npm link](https://docs.npmjs.com/cli/link)

```
# Install global packages into a ${USER}-owned directory
npm config set prefix '~/.local/lib/npm'

cd ~/workspace/foo
npm link

cd ~/workspace/bar
npm link foo
> /home/user/workspace/bar/node_modules/foo ->
    /home/user/.local/lib/npm/lib/node_modules/foo ->
      /home/user/workspace/foo
```

## Publishing

* [npm config - commit-hooks](https://docs.npmjs.com/misc/config#commit-hooks)
* [npm publish](https://docs.npmjs.com/cli/publish)
* [npm version](https://docs.npmjs.com/cli/version)

```
# Do not run commit-hooks which may try to format package.json (husky -> prettier)
npm config set commit-hooks false

# Prerelease
npm version prerelease
git push && git push --tags
# By default `npm publish` tags the published artifact with "latest"
# By default `npm install` installs the artifact with the tag named "latest"
npm publish --tag next

# Release
npm version minor
git push && git push --tags
npm publish
```
