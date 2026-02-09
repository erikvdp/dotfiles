alias pip="python3 -m pip"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/Users/erik/.local/bin:$PATH"
export PATH="/Users/erik/.local/bin:$PATH"
export PATH="/usr/local/opt/postgresql@16/bin:$PATH"

if [ -f .env ]; then
  set -a # Automatically export all variables
  source .env
  set +a # Stop automatically exporting
fi
eval "$(direnv hook zsh)"

fpath+=~/.zfunc; autoload -Uz compinit; compinit

zstyle ':completion:*' menu select
export PATH="$HOME/.local/bin:$PATH"

# Added by Antigravity
export PATH="/Users/erik/.antigravity/antigravity/bin:$PATH"
export PRE_COMMIT_NO_CONCURRENCY=1

# bun completions
[ -s "/Users/erik/.bun/_bun" ] && source "/Users/erik/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
