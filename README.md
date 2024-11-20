# Project Setup

## Install Rust and Solana CLI

To install Rust and Solana CLI, run the following commands:

```bash
# Install Rust
$ curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
$ rustc --version
$ echo %PATH
$ rustup update
$ rustup install nightly
$ cargo +nightly bench

# Install Solana CLI
$ sh -c "$(curl -sSfL https://release.solana.com/LATEST_RELEASE/install)"

# Install dependencies and build the project
$ cargo build
$ cargo add <dependency>  # To add a dependency
$ cargo install <package>  # To install a package
$ cargo clean  # To clean the project
$ cargo --help  # Show help for Cargo

# Build and Test
$ cargo build
$ cargo test
