# generate shell colorscheme based on wallpaper
wal -q -e -i ~/Downloads/cyberpunk.jpg
# wal -q -i ~/.dotfiles/wallpapers/katana.jpg
# wal -q -i ~/Downloads/wallpaperflare.com_wallpaper.jpg
# wal -q --saturate 0.45 -i ~/.dotfiles/wallpaper/inanis.jpg
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes


#ZSH_THEME="norm"
# ZSH_THEME="agnoster"
ZSH_THEME="cypher"
#ZSH_THEME="intika"
#ZSH_THEME="fishy"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
#
# alias for remapping keys
#alias remap-keys="sudo evremap remap ~/.config/remapping-keys.toml"
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias alacritty-conf="vim ~/.config/alacritty/alacritty.toml"
alias polybar-conf="vim ~/.config/polybar/config.ini"
alias i3blocks-conf="vim ~/.config/i3/i3blocks.conf"
alias slick-greeter="sudo vim /etc/lightdm/slick-greeter.conf"
alias picom-conf="vim ~/.config/picom/picom.conf"
alias i3-config="vim ~/.config/i3/config"
alias background-dir="cd /usr/share/endeavouros/backgrounds/"
alias pc="sudo pacman -S"
alias ls="eza -lla --time modified -s accessed"
# alias ls="ls -la --color | sort"
alias vim="nvim"
alias nvplug="vim /home/d4r10/.config/nvim/lua/plugins/init.lua"
alias nf="neofetch"
alias ff="fzf"
alias bd="sudo bandwhich"
alias lex="lexido"
alias mp3="yt-dlp --extract-audio --audio-format mp3 --audio-quality 0 -o '$HOME/Music/%(title)s.%(ext)s'"
alias mp3-here="yt-dlp --extract-audio --audio-format mp3 --audio-quality 0 -o '%(title)s.%(ext)s'"
alias rustlings="cd ~/stuffs/rustlings/ && ~/.cargo/bin/rustlings"
alias mp4="yt-dlp -f 'bestvideo[height=480]+bestaudio' -o '$HOME/Videos/%(title)s.%(ext)s'"
alias br="brightnessctl set"
alias fonts="fc-list"
alias clock="tty-clock"
alias remap="sudo evremap remap ~/.config/remapping-keys.toml"
alias auth="gh auth login"
alias rust="cd ~/stuffs/rust/"
alias lightdm-conf="sudo vim /etc/lightdm/slick-greeter.conf"
alias reso="xrandr --output LVDS-1 --mode 1366x768 && source ~/.zshrc"
alias reso2="xrandr --output LVDS-1 --mode 1920x1080_60.00 && source ~/.zshrc"
alias login-conf="sudo nvim /etc/lightdm/slick-greeter.conf"
alias cpall="rsync -av . ~/.dotfiles --exclude=Mechvibes --exclude=user-dirs.dirs"
#alias spotify="spotify --force-device-scale-factor=1.5"
#alias ping="xping '$1'"

#bindings
bindkey -s '^f' 'vim $(fzf)\n'

# Created by `pipx` on 2024-03-17 07:10:22
export PATH="$PATH:/home/d4r10/.local/bin"
export PATH="$PATH:/home/d4r10/.cargo/bin"


eval "$(atuin init zsh)"
