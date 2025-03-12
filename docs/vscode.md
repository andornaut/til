# Visual Studio Code

* [Official](https://code.visualstudio.com/)
* [Cursor](./cursor.md)
* [Tips and tricks](https://code.visualstudio.com/docs/getstarted/tips-and-tricks)

## Keyboard shortcuts

* [Keybinding docs](https://code.visualstudio.com/docs/getstarted/keybindings)
* Keyboard shortcuts for [linux](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-linux.pdf) or [macOS](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)

Linux|macOS|Description
---|---|---
Ctrl+p|⌘p|Quick Open, Go to File
Ctrl+Shift+p|⌘⇧P|Show Command Palette
⌃`|⌃`|Show integrated terminal
|Ctrl+k Ctrl+c|⌘k ⌘c|Add line comment (cord shortcuts)
|Ctrl+k Ctrl+u|⌘k ⌘u|Remove line comment (cord shortcuts)
||⌥⇧A|Toggle block comment
||⌘⇧O|Go to Symbol
||⌘⇧E|Show Explorer / Toggle focus
||⌘⇧F|Show Search
||⌘⇧U|Show Output panel
Ctrl+Shift+Y||Show debug console
||⌘⇧H|Replace in files
Ctrl+Shift+L|⌘⇧L|Select all occurrences of the current selection
F9|F9|Toggle breakpoint
F5|F5|Start/Continue
F1|F1|Step into
Shift+F11|⇧F11|Step out
F10|F10|Step over
Shift+F5|⇧F5|Stop

## Add CLI executable on macOS

1. Launch VS Code.
1. Open the Command Palette (⇧⌘P)
1. Type 'shell command' and then select: Shell Command: Install 'code' command in PATH

This will install an script in `/usr/local/bin/code` that can be used to open Code.

You can then create handy aliases, such as:

```
$ grep code ~/.bash_aliases
alias scratch="code --new-window ${HOME}/scratch.md"
alias til="code --new-window ${HOME}/src/github.com/andornaut/til"
```

## Enable key repeating on macOS

* [Howto](https://github.com/VSCodeVim/Vim#mac)

```
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults delete -g ApplePressAndHoldEnabled # If necessary, reset global default
```

## Extensions

Name | Description
--- | ---
[Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments) | Improve your code commenting by annotating with alert, informational, TODOs, and more!
[Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) | Open any folder or repository inside a Docker container and take advantage of Visual Studio Code's full feature set
[Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) | Makes it easy to create, manage, and debug containerized applications
[EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig) | EditorConfig Support for Visual Studio Code
[Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens) | Improve highlighting of errors, warnings and other language diagnostics
[GitHub Pull Requests](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github) | Pull Request and Issue Provider for GitHub
[GitHub Repositories](https://marketplace.visualstudio.com/items?itemName=GitHub.remotehub) | Remotely browse and edit any GitHub repository
[GitLens — Git supercharged](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) | Supercharge Git within VS Code — Visualize code authorship at a glance via Git blame annotations and CodeLens, seamlessly navigate and explore Git repositories, gain valuable insights via rich visualizations and powerful comparison commands, and so much more
[GraphQL: Language Feature Support](https://marketplace.visualstudio.com/items?itemName=GraphQL.vscode-graphql) | GraphQL LSP extension that adds autocompletion, validation, go to definition, hover, outline and more
[GraphQL: Syntax Highlighting](https://marketplace.visualstudio.com/items?itemName=GraphQL.vscode-graphql-syntax) | Adds syntax highlighting support for .graphql & embedded support for javascript, typescript, vue, markdown, python, php, reason, ocaml and rescript
[IBM1970](https://marketplace.visualstudio.com/items?itemName=Andornaut.ibm1970) | An IBM and 1970s inspired dark color theme
[Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare) | Real-time collaborative development from the comfort of your favorite tools
[markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint) | Markdown linting and style checking for Visual Studio Code
[Remote - SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh) | Open any folder on a remote machine using SSH and take advantage of VS Code's full feature set
[Remote - SSH: Editing Configuration Files](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh-edit) | Edit SSH configuration files
[Remote Explorer](https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-explorer) | View remote machines for SSH and Tunnels
[Remote Repositories](https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-repositories) | Remotely browse and edit git repositories
[TOML Language Support](https://marketplace.visualstudio.com/items?itemName=be5invis.toml) | TOML language support
[Trailing Spaces](https://marketplace.visualstudio.com/items?itemName=shardulm94.trailing-spaces) | https://marketplace.visualstudio.com/items?itemName=shardulm94.trailing-spaces
[vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim) | Vim emulation for Visual Studio Code
[YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) | YAML Language Support by Red Hat, with built-in Kubernetes syntax support

### Language-specific extensions

Name | Description
--- | ---
[CodeLLDB](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb) | A native debugger powered by LLDB. Debug C++, Rust and other compiled languages
[ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint) | Integrates ESLint JavaScript into VS Code
[Go](https://marketplace.visualstudio.com/items?itemName=golang.Go) | Rich Go language support for Visual Studio Code
[Hex Editor](https://marketplace.visualstudio.com/items?itemName=ms-vscode.hexeditor) | Allows viewing and editing files in a hex editor
[Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter) | Jupyter notebook support, interactive programming and computing that supports Intellisense, debugging and more
[Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) | Code formatter
[Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance) | A performant, feature-rich language server for Python in VS Code
[Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) | Python language support with extension access points for IntelliSense (Pylance), Debugging (Python Debugger), linting, formatting, refactoring, unit tests, and more
[Python debugger](https://marketplace.visualstudio.com/items?itemName=ms-python.debugpy) | Python Debugger extension using debugpy
[Ruby LSP](https://marketplace.visualstudio.com/items?itemName=Shopify.ruby-lsp&ssr=false#review-details) | VS Code plugin for connecting with the Ruby LSP
[Ruby Solargraph](https://marketplace.visualstudio.com/items?itemName=castwide.solargraph) | A Ruby language server featuring code completion, intellisense, and inline documentation
[ruff](https://marketplace.visualstudio.com/items?itemName=charliermarsh.ruff) | A Visual Studio Code extension with support for the Ruff linter and formatter
[rust-analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer) | Rust language support for Visual Studio Code
