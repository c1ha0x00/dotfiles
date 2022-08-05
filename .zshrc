# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/c1ha/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# c1ha
export PAGER="nvimpager"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

## c1ha-zinit config
# 加载 https://gist.githubusercontent.com/Hill-98/93db00b01327a0226955c2c6b3b7e137/raw/auto-bin-path.zsh
zinit snippet https://gist.githubusercontent.com/Hill-98/93db00b01327a0226955c2c6b3b7e137/raw/auto-bin-path.zsh
# https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/completion.zsh
# 加载 Oh My Zsh 的实用脚本 completion.zsh
zinit snippet OMZL::completion.zsh
# 加载 OMZL prompt_info_functions.zsh
zinit snippet OMZL::prompt_info_functions.zsh
# Zsh 插件: archlinux
zinit snippet OMZP::archlinux
# 加载 Oh My Zsh 的主题：half-life
zinit snippet OMZT::half-life
# 从 https://github.com/zsh-users/zsh-syntax-highlighting 加载插件
zinit load zsh-users/zsh-syntax-highlighting
