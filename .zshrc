# oh-my-posh setting
eval "$(oh-my-posh init zsh --config ~/themes/bubblesextra.omp.json)"

# golang setting
export GOPATH="$HOME/.go"
export PATH="$GOPATH/bin:$PATH"

# pyenv setting
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# GPG-key setting
export GPG_TTY=$(tty)

# zsh-completions setting
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# zsh-autosuggestions setting
source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# locale setting
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
