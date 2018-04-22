# NPM

## Publishing

* [npm publish](https://docs.npmjs.com/cli/publish)
* [npm version](https://docs.npmjs.com/cli/version)

```
# Prerelease
npm version prerelease
# By default `npm publish` tags the published artifact with "latest"
# By default `npm install` installs the artifact with the tag named "latest"
npm publish --tag next

# Release
npm version minor
npm publish
```

## Linking

* [npm link](https://docs.npmjs.com/cli/link)
* [npm config - prefix](https://docs.npmjs.com/misc/config#prefix)

```
npm config set prefix '~/.local/lib/npm'

cd ~/workspace/foo
npm link

cd ~/workspace/bar
npm link bar
> /home/andornaut/workspace/bar/node_modules/foo ->
    /home/andornaut/.local/lib/npm/lib/node_modules/foo ->
      /home/andornaut/workspace/foo
```

