# Rust

* [./Software Engineering](./software-engineering.md)
* [Blog](https://blog.rust-lang.org/) - Official blog
* [Crates.io](https://crates.io) - Public package repository
* [Discord](https://discord.gg/rust-lang) - Official discord server
* [Docs.rs](https://docs.rs/) - Documentation host for crates
* [Documentation](https://doc.rust-lang.org/) - Official documentation
  * [Editions](https://doc.rust-lang.org/edition-guide/editions/index.html)
  * [Language reference](https://doc.rust-lang.org/reference/index.html)
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
  * [RefCell\<T> and the Interior Mutability Pattern](https://doc.rust-lang.org/book/ch15-05-interior-mutability.html)
  * [Shared-State Concurrency](https://doc.rust-lang.org/book/ch16-03-shared-state.html)
Read a local copy of "The Rust Programming Language" book in a web browser with: `rustup doc --book`

## Articles, blogs, and courses

* [After NLL: Interprocedural conflicts](http://smallcultfollowing.com/babysteps/blog/2018/11/01/after-nll-interprocedural-conflicts/)
* [Comprehensive Rust](https://google.github.io/comprehensive-rust/) - 4 day course by Google's Android team
* [Finding Closure in Rust](https://huonw.github.io/blog/2015/05/finding-closure-in-rust/)
* [How to Idiomatically Use Global Variables in Rust](https://www.sitepoint.com/rust-global-variables/)
* [How to Learn Rust in 2024: A Complete Beginner’s Guide to Mastering Rust Programming](https://blog.jetbrains.com/rust/2024/09/20/how-to-learn-rust/)
* [Learn Rust With Entirely Too Many Linked Lists](https://rust-unofficial.github.io/too-many-lists/)
* [Learning about Rust's next, peek, and windows](https://sts10.github.io/2020/10/06/peeking-the-pivot.html)
* [min-sized-rust](https://github.com/johnthagen/min-sized-rust) - Minimize the size of a Rust binary
* [Playing with tui-rs](https://monkeypatch.io/blog/2021/2021-05-31-rust-tui/) - Covers async + TUI
* [Rust and TUI: Building a command-line interface in Rust](https://blog.logrocket.com/rust-and-tui-building-a-command-line-interface-in-rust/)
* [Rust Date & Time](https://dev.to/ssivakumar/rust-date-time-e2k)
* [Rust's Rules Are Made to Be Broken](https://blog.warp.dev/rules-are-made-to-be-broken/)
* [Xilem: an architecture for UI in Rust](https://raphlinus.github.io/rust/gui/2022/05/07/ui-architecture.html)

## Getting started

* [Documentation > Channels](https://rust-lang.github.io/rustup/concepts/channels.html)
* [Install Rust](https://www.rust-lang.org/tools/install)

Install system packages

```bash
# Make sure rust isn't installed, because we'll use `rustup` to manage rust and cargo installations
# Linux: apt remove cargo rust
# macOS: brew uninstall rust

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Ensure that `~/.cargo/env`
[is sourced in your environment](https://github.com/andornaut/dotfiles/blob/53bff380386a79c805b7bb8337f7c971b859103e/%24HOME/.bashrc.andornaut#L98). `rustup` may update `~/.bashrc`, `~/.profile`, and/or `~/.zshenv` accordingly, but you may wish to modify these files according to your needs.

```bash
if [[ -f "${HOME}/.cargo/env" ]]; then
    source "${HOME}/.cargo/env"
fi
```

Update Rust on the stable, beta, or nightly channel

```bash
#channel=beta
#channel=nightly
channel=stable
rustup update ${channel}
rustup default ${channel}

# Install cargo addons globally
cargo install cargo-audit
cargo install cargo-outdated
```

Create a project

```bash
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

## Testing

* [Controlling How Tests Are Run](https://doc.rust-lang.org/book/ch11-02-running-tests.html)
* [Rust by example](https://doc.rust-lang.org/rust-by-example/testing/unit_testing.html)
* [test_case (crate)](https://crates.io/crates/test_case) - Generate parametrized test cases
  
```rust
#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_add() {
        assert_eq!(add(1, 2), 3);
    }

    use test_case::test_case;

    #[test_case(-2, -4 ; "when both operands are negative")]
    #[test_case(2,  4  ; "when both operands are positive")]
    #[test_case(4,  2  ; "when operands are swapped")]
    fn multiplication_tests(x: i8, y: i8) {
        let actual = (x * y).abs();

        assert_eq!(8, actual)
    }
}
```

Run tests using Cargo
```bash
# Display one character per test instead of one line
# Test only this package's library unit tests
cargo test --quiet --lib

# Run all tests whose name matches `*navigate*`
cargo test navigate

# Run tests in a module and its submodules
cargo test views::

# Run tests in a module, but not its submodules
cargo test views::tests
```

## Macros

Features and crate-level configuration:

```rust
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

```bash
# List features enabled for each dependency
cargo tree -f "{p} {f}"

# More verbose version of the above
cargo tree -e features

# Fix issues
cargo fix

# Fix issues even if the current package has uncommitted changes
cargo fix --allow-dirty
```

### Cargo.toml overriding direct and transitive dependencies

* [Overriding dependencies](https://doc.rust-lang.org/cargo/reference/overriding-dependencies.html)

```toml
[patch.crates-io]
# Patch direct and transitive (from color-to-tui) dependencies on ratatui in order to use:
# * feat(table): enforce line alignment in table render
# v0.22.1-alpha.2
# https://github.com/ratatui-org/ratatui/commit/d2429bc3e44a34197511192dbd215dd32fdf2d9c
ratatui = {git = "https://github.com/ratatui-org/ratatui.git", rev = "b6b2da5"}
```

## Visual Studio Code

* [CodeLLDB extension](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb) - Debugger
* [Rust-analyzer extension](https://marketplace.visualstudio.com/items?itemName=matklad.rust-analyzer) - Recommended language support extensions. Conflicts with [Rust extension](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust).
* [Rust in Visual Studio Code](https://code.visualstudio.com/docs/languages/rust)

### Debugging extensions

* [Debugging with GDB](https://blog.logrocket.com/debugging-rust-apps-with-gdb/)

The [CodeLLDB extension](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb)
should create a run/debug configuration in `.vscode/launch.json`:

```json
{
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "type": "lldb",
            "request": "launch",
            "name": "Debug",
            "program": "${workspaceFolder}/target/debug/filectrl",
            "args": [],
            "cwd": "${workspaceFolder}"
        }
    ]
}
```

### Tasks

* [Tasks](https://code.visualstudio.com/docs/editor/tasks#vscode)

You can execute cargo tasks from within VS Code:

1. Press: CTRL+Shift+P
1. Enter "Tasks: Run Task"
1. Enter "rust:"
1. Select "Show All Tasks..."

## Crates - Frameworks and libraries

Name | Description
--- | ---
[anyhow](https://github.com/dtolnay/anyhow)|Concrete `Error` type built on `std::error::Error`
[cargo-nextest](https://nexte.st/)|A next-generation test runner
[clap](https://github.com/clap-rs/clap)|Parse command line arguments
[chrono](https://github.com/chronotope/chrono)|Timezone-aware date and time handling
[chrono-tz](https://github.com/chronotope/chrono-tz)|Companion of [chrono](https://github.com/chronotope/chrono) that adds timezone data
[color-to-tui](https://github.com/uttarayan21/color-to-tui)|Parse hex colors to `tui::style::Color`
[copypasta](https://github.com/alacritty/copypasta)|Cross-platform Rust system clipboard library 
[criterion](https://github.com/bheisler/criterion.rs)|Statistics-driven benchmarking library
[crossterm](https://github.com/crossterm-rs/crossterm)|Cross-platform terminal library ([Documentation](https://docs.rs/crossterm/latest/crossterm/))
[cursive](https://github.com/gyscos/Cursive)|Text User Interface (TUI) library. ([Comparison to tui](https://github.com/gyscos/cursive/wiki/Cursive-vs-tui%E2%80%90rs)).
[dirs-next](https://github.com/xdg-rs/dirs/tree/master/dirs)|Low-level library that provides conventional config/cache/data paths
[divan](https://github.com/nvzqz/divan)|Fast and simple benchmarking
[egui](https://github.com/emilk/egui)|An easy-to-use immediate mode GUI in Rust that runs on both web and native
[env_logger](https://github.com/rust-cli/env_logger/)|A logging implementation for `log` which is configured via an environment variable
[enum-iterator](https://crates.io/crates/enum-iterator)|`#[derive(IntoEnumIterato)` for enums
[gtk-rs](https://gtk-rs.org/)|GTK4, Cairo, glib, etc bindings
[indicatif](https://docs.rs/indicatif/latest/indicatif/index.html)|Progress bar library
[itertools](https://docs.rs/itertools/latest/itertools/)|Extra iterator adaptors, functions and macros
[lazy_static](https://crates.io/crates/lazy_static/)|A macro for declaring lazily evaluated statics
[mdBook](https://rust-lang.github.io/mdBook/)|A CLI tool to create books with Markdown
[notify](https://github.com/notify-rs/notify)|Cross-platform filesystem notification library
[OnceCell](https://crates.io/crates/once_cell)|Single assignment cells and lazy values
[rand](https://github.com/rust-random/rand)|Generate random numbers
[ratatui](https://github.com/ratatui-org/ratatui)|Text User Interface (TUI) library. Successor to [tui](https://github.com/fdehau/tui-rs) ([ratatui-book](https://ratatui-org.github.io/ratatui-book/))
[Serde JSON](https://github.com/serde-rs/json)|Serialize and deserialize JSON
[strum](https://github.com/Peternator7/strum)|Various `#[derive(...)]` for enums
[tempfile](https://github.com/Stebalien/tempfile)|Create temporary files or directories
[tera](https://tera.netlify.app/)|Template engine inspired by Jinja2
[test-case](https://github.com/frondeus/test-case)|Macro to generate parameterized test cases
[textwrap](https://github.com/mgeisler/textwrap)|A library for word wrapping text
[tokio](https://github.com/tokio-rs/tokio)|Async runtime, including IO, networking, scheduling, and timers
[uuid](https://github.com/uuid-rs/uuid)|Generate and parse UUIDs
[winit](https://github.com/rust-windowing/winit)|Cross-platform window creation and management

## Software

Name | Description
--- | ---
[Alacritty](https://github.com/alacritty/alacritty) | A cross-platform, OpenGL terminal emulator
[bevy](https://bevyengine.org/) | Game engine

## Troubleshooting

```bash
cargo build
   Compiling space_time_rewind v0.1.0 (/home/andornaut/src/github.com/andornaut/space-time-rewind)
thread 'rustc' panicked at 'failed to lookup `SourceFile` in new context', compiler/rustc_query_impl/src/on_disk_cache.rs:514:22
```

[Fix](https://github.com/rust-lang/rust/issues/70924):

```bash
cargo clean && cargo build
```
