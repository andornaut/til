# Rust

* [./Software Engineering](./software-engineering.md)
* [Blog](https://blog.rust-lang.org/) - Official blog
* [Crates.io](https://crates.io) - Public package repository
* [Discord](https://discord.gg/rust-lang) - Official discord server
* [Docs.rs](https://docs.rs/) - Documentation host for crates
* [Documentation](https://doc.rust-lang.org/) - Official documentation
  * [Editions](https://doc.rust-lang.org/edition-guide/editions/index.html)
  * [Standard Library](https://doc.rust-lang.org/std/index.html)
  * [Test](https://doc.rust-lang.org/test/index.html)
* [Forum](https://users.rust-lang.org/) - Official forum
* [Official site](https://www.rust-lang.org/)
* [Playground](https://play.rust-lang.org/) - Run code on the web
* [Reddit /r/rust](https://www.reddit.com/r/rust)
* [RFCs](https://github.com/rust-lang/rfcs)
* [`##rust` @ irc.libera.chat](https://web.libera.chat/?chan=##rust) - IRC channel
* [rustup](https://rustup.rs/) - Toolchain installer and manager

## Books

* [Hands-on Rust - Effective Learning through 2D Game Development and Play](https://pragprog.com/titles/hwrust/hands-on-rust/)
* [Programming Rust, 2nd Edition (2021)](https://www.oreilly.com/library/view/programming-rust-2nd/9781492052586/)
* [Rust for Rustaceans (2021)](https://nostarch.com/rust-rustaceans)
* [The Little Book of Rust Macros](https://danielkeep.github.io/tlborm/book/index.html)
* [The Rust Programming Language (2019)](https://doc.rust-lang.org/book/)
  * [RefCell<T> and the Interior Mutability Pattern](https://doc.rust-lang.org/book/ch15-05-interior-mutability.html)
  * [Shared-State Concurrency](https://doc.rust-lang.org/book/ch16-03-shared-state.html)
Read a local copy of "The Rust Programming Language" book in a web browser with: `rustup doc --book`

## Articles, blogs, and courses

* [Comprehensive Rust](https://google.github.io/comprehensive-rust/) - 4 day course by Google's Android team 
* [Finding Closure in Rust](https://huonw.github.io/blog/2015/05/finding-closure-in-rust/)
* [How to Idiomatically Use Global Variables in Rust](https://www.sitepoint.com/rust-global-variables/)
* [Learn Rust With Entirely Too Many Linked Lists](https://rust-unofficial.github.io/too-many-lists/)
* [Learning about Rust's next, peek, and windows](https://sts10.github.io/2020/10/06/peeking-the-pivot.html)
* [min-sized-rust](https://github.com/johnthagen/min-sized-rust) - Minimize the size of a Rust binary
* [Playing with tui-rs](https://monkeypatch.io/blog/2021/2021-05-31-rust-tui/) - Covers async + TUI
* [Rust and TUI: Building a command-line interface in Rust](https://blog.logrocket.com/rust-and-tui-building-a-command-line-interface-in-rust/)
* [Rust's Rules Are Made to Be Broken](https://blog.warp.dev/rules-are-made-to-be-broken/)
* [Xilem: an architecture for UI in Rust](https://raphlinus.github.io/rust/gui/2022/05/07/ui-architecture.html)

## Getting started

* [Documentation > Channels](https://rust-lang.github.io/rustup/concepts/channels.html)
* [Install Rust](https://www.rust-lang.org/tools/install)

Install system packages
```
# Make sure rust isn't installed, because we'll use `rustup` to manage rust and cargo installations
# Linux: apt remove cargo rust
# macOS: brew uninstall rust

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Ensure that `~/.cargo/env`
[is sourced in your environment](https://github.com/andornaut/dotfiles/blob/53bff380386a79c805b7bb8337f7c971b859103e/%24HOME/.bashrc.andornaut#L98). `rustup` may update `~/.bashrc`, `~/.profile`, and/or `~/.zshenv` accordingly, but you may wish to modify these files according to your needs.
```
if [[ -f "${HOME}/.cargo/env" ]]; then
    source "${HOME}/.cargo/env"
fi
```

Update Rust on the stable, beta, or nightly channel
```
#channel=beta
#channel=nightly
channel=stable
rustup update ${channel}
rustup default ${channel}
```

Create a project
```
# Use the binary template by default: --bin
cargo new ${project_name}

# Or use the library template: --lib
# cargo new --lib ${library_project_name}

cd ${project_name}
vim Cargo.toml

# Use the toolchain from the nightly channel for this project/directory
rustup override set nightly

cargo build
cargo run
```

## Macros

Features and crate-level configuration:
```
// Requires Rust from the nightly channel as of rustc 1.59.0-nightly (e012a191d 2022-01-06)
#![feature(mixed_integer_ops)]

// Allow modules to have the same name as their parent module
#![allow(clippy::module_inception)]

// Show more lint warnings
#![warn(clippy::all, clippy::pedantic)]
```

## Cargo

* [cargo-make](https://github.com/sagiegurari/cargo-make) - Task runner and build tool
* [Specifying features](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html)

```
# List features enabled for each dependency
cargo tree -f "{p} {f}"
# More verbose version of the above
cargo tree -e features
```

## Visual Studio Code

* [CodeLLDB extension](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb) - Debugger
* [Rust extension](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust) - Language support. Conflicts with [Rust-analyzer extension](https://marketplace.visualstudio.com/items?itemName=matklad.rust-analyzer).
* [Rust-analyzer extension](https://marketplace.visualstudio.com/items?itemName=matklad.rust-analyzer) - Language support (experimental, but **recommended**). Conflicts with [Rust extension](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust).
* [Tasks](https://code.visualstudio.com/docs/editor/tasks#vscode)

`./.vscode/tasks.json`:
```
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "cargo build",
      "type": "shell",
      "command": "cargo build",
      "args": [],
      "group": {
        "kind": "build",
        "isDefault": true
      },
      "problemMatcher": []
    },
    {
      "label": "cargo run",
      "type": "shell",
      "command": "cargo",
      "args": [
        "run"
      ],
      "group": {
        "kind": "test",
        "isDefault": true
      },
      "problemMatcher": []
    }
  ]
}
```

## Crates - Frameworks and libraries

Name | Description
--- | ---
[anyhow](https://github.com/dtolnay/anyhow)|Concrete `Error` type built on `std::error::Error`
[clap](https://github.com/clap-rs/clap)|Parse command line arguments
[chrono](https://github.com/chronotope/chrono)|Date and time library
[chrono-tz](https://github.com/chronotope/chrono-tz)|Timezone library
[crossterm](https://github.com/crossterm-rs/crossterm)|Library for controlling terminals
[cursive](https://github.com/gyscos/Cursive)|Text User Interface (TUI) library. ([Comparison to tui](https://github.com/gyscos/cursive/wiki/Cursive-vs-tui%E2%80%90rs)).
[egui](https://github.com/emilk/egui) | An easy-to-use immediate mode GUI in Rust that runs on both web and native 
[enum-iterator](https://crates.io/crates/enum-iterator)|`#[derive(IntoEnumIterato)` for enums
[gtk-rs](https://gtk-rs.org/)|GTK4, Cairo, glib, etc bindings
[itertools](https://docs.rs/itertools/latest/itertools/)|Extra iterator adaptors, functions and macros
[OnceCell](https://crates.io/crates/once_cell)|Single assignment cells and lazy values
[rand](https://github.com/rust-random/rand)|Generate random numbers
[ratatui](https://github.com/tui-rs-revival/ratatui)|Text User Interface (TUI) library. Successor to [tui](https://github.com/fdehau/tui-rs)
[Serde JSON](https://github.com/serde-rs/json)|Serialize and deserialize JSON
[strum](https://github.com/Peternator7/strum)|Various `#[derive(...)]` for enums
[tempfile](https://github.com/Stebalien/tempfile)|Create temporary files or directories
[tera](https://tera.netlify.app/)|Template engine inspired by Jinja2
[tokio](https://github.com/tokio-rs/tokio)|Async runtime, including IO, networking, scheduling, and timers
[uuid](https://github.com/uuid-rs/uuid)|Generate and parse UUIDs

## Software

* [bevy](https://bevyengine.org/) - Game engine

## Debugging

* [Debugging with GDB](https://blog.logrocket.com/debugging-rust-apps-with-gdb/)

## Troubleshooting

```
$ cargo build
   Compiling space_time_rewind v0.1.0 (/home/andornaut/src/github.com/andornaut/space-time-rewind)
thread 'rustc' panicked at 'failed to lookup `SourceFile` in new context', compiler/rustc_query_impl/src/on_disk_cache.rs:514:22
```

[Fix](https://github.com/rust-lang/rust/issues/70924): `cargo clean && cargo build`
