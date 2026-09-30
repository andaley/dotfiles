if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Shims also serve programs that do not load the interactive shell.
export PATH="$HOME/.local/share/mise/shims:$HOME/.local/bin:$PATH"

[[ ! -f "$HOME/.zprofile.local" ]] || source "$HOME/.zprofile.local"
