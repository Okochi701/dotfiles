if [ "$(uname -m)" = "arm64" ]; then
 eval "$(/opt/homebrew/bin/brew shellenv)"
 export PATH="/opt/homebrew/bin:$PATH"
else
 eval "$(/usr/local/bin/brew shellenv)"
fi

if [ "$(uname -m)" = "arm64" ]; then
  export PYENV_ROOT="$HOME/.pyenv_arm64"
  export PATH="$HOME/.pyenv_arm64/bin:$PATH"
else
  export PYENV_ROOT="$HOME/.pyenv_x86"
  export PATH="$HOME/.pyenv_x86/bin:$PATH"
fi
eval "$(pyenv init -)"
eval "$(pyenv init --path)"
alias x86='arch -x86_64 zsh'
alias arm='arch -arm64e zsh'

export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
export "PATH=/usr/local/bin:$PATH"
export PATH="/Users/okochimasahide/.local/bin:$PATH"
