# JavaScript

* [Mozilla Developer Network (MDN)](https://developer.mozilla.org/en-US/)
* [./NPM](./npm.md)
* [./Software Engineering](./software-engineering.md)

## Books

* [Eloquent JavaScript](https://eloquentjavascript.net)
* [JavaScript Allongé, the "Six" Edition](https://leanpub.com/javascriptallongesix/read)
* [JavaScript The Good Parts](https://www.oreilly.com/library/view/javascript-the-good/9780596517748/)
* [JavaScript - The Definitive Guide](https://www.oreilly.com/library/view/javascript-the-definitive/9781491952016/)
* [JavaScript - The New Toys](https://www.wiley.com/en-us/JavaScript:+The+New+Toys-p-9781119367963)
* [Programming TypeScript](https://www.oreilly.com/library/view/programming-typescript/9781492037644/)
* [Secrets of the JavaScript Ninja](https://www.manning.com/books/secrets-of-the-javascript-ninja-second-edition)

## Articles

* [Use `console.log()` like a pro](https://markodenic.com/use-console-log-like-a-pro/)

## Install NVM on Linux

* [NVM on GitHub](https://github.com/nvm-sh/nvm)

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

cat <<'EOF' >> ~/.bashrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
EOF
```

## Install NVM on macOS

* [NVM on Homebrew](https://formulae.brew.sh/formula/nvm)

```bash
brew install nvm

cat <<'EOF' >> ~/.bashrc
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
EOF
```

## Getting started

```bash
nvm install --lts
nvm use --lts
```

## React

### Accessibility

* [Accessibility in Ontario (AODA)](https://www.ontario.ca/page/accessibility-in-ontario)
* [Wave Firefox extension](https://addons.mozilla.org/en-CA/firefox/addon/wave-accessibility-tool/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search) - Evaluate web accessibility

### Performance

* [Apollo FetchPolicy options](https://www.apollographql.com/docs/react/data/queries/#setting-a-fetch-policy)
* [Google Core Web Vitals](https://web.dev/vitals/)
* [React profiler](https://reactjs.org/docs/profiler.html)

## Storybook

* [storybook.js.org](https://storybook.js.org/)

## TypeScript

* [Examples](https://dev.to/bendman/react-typescript-cheatsheet-1f2h)
* [React TypeScript Cheatsheet](https://react-typescript-cheatsheet.netlify.app/docs/basic/setup)
* [React Typescript handbook](https://www.typescriptlang.org/docs/handbook/react.html)
* [tsconfig cheatsheet](https://www.totaltypescript.com/tsconfig-cheat-sheet)

