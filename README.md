# andaley/dotfiles

My setup for an Apple Silicon Mac, managed with [mise](https://mise.jdx.dev/).
Homebrew installs apps and shell utilities while mise installs Node and Go.

## New Mac

Install [Homebrew](https://brew.sh) and its required command-line tools.
Skip Homebrew's step that adds configuration to `~/.zprofile` because this repo supplies that file.
Activate Homebrew for the current terminal, then clone this repo and run the installer:

```sh
eval "$(/opt/homebrew/bin/brew shellenv)"
git clone https://github.com/andaley/dotfiles.git ~/dev/dotfiles
cd ~/dev/dotfiles
./install.sh
```

Setup links the files in `home/` to the same paths under your home directory.

If a destination already exists, setup stops without replacing it.
Move that file aside, then run `mise run setup` again from this repo.

Open a new terminal. Add your Git identity:

```sh
git config --file ~/.gitconfig.local user.name "Adrianne Daley"
git config --file ~/.gitconfig.local user.email "your@email.com"
```

Sign into your apps and GitHub. Configure SSH keys and work-specific tools separately.

## Changes

Edit files in `home/` or through their links. Commit and push changes yourself.

Add apps to `Brewfile` and developer tools to `home/.config/mise/config.toml`.
Run `mise run setup` from this repo to apply additions.

Keep machine-specific settings and secrets in `~/.gitconfig.local`, `~/.zshrc.local`, or `~/.zprofile.local`.
