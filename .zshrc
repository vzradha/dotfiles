# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="mgutz"
#ZSH_THEME="cloudy"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
#ZSH_CUSTOM=$HOME/.ssh-aliases

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx ruby rails tmux brew bundler common-aliases git-extras zsh-autosuggestions kubectl)  

# Vultr SSH aliases
#source $ZSH_CUSTOM/.vultr-ssh-aliases

# User configuration

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"
# jenv path settings
export PATH="$HOME/.jenv/bin":$PATH

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
[[ -f /usr/local/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh ]] && . /usr/local/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
eval "$(jenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/versions/3.7.0/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)";
fi
if which pyenv-virtualenv-init > /dev/null; then
 eval "$(pyenv virtualenv-init -)";
fi

# Sourcing the zsh theme for some wierd reason. ZSH_THEME not working correctly
#source ~/.oh-my-zsh/themes/mrtazz.zsh-theme

# Sourcing aws command completion
source /usr/local/bin/aws_zsh_completer.sh
# All things Golang
#
export GOPATH="${HOME}/workspace/go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vzradha/workspace/python-test/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/vzradha/workspace/python-test/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vzradha/workspace/python-test/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/vzradha/workspace/python-test/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
