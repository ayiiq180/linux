source /usr/share/zsh/share/antigen.zsh

# 加载oh-my-zsh库
antigen use oh-my-zsh

# 加载原版oh-my-zsh中的功能(robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle extract
antigen bundle command-not-found # 语法高亮功能
antigen bundle zsh-users/zsh-syntax-highlighting # 代码提示功能
antigen bundle zsh-users/zsh-autosuggestions # 自动补全功能
antigen bundle zsh-users/zsh-completions # 加载主题
antigen theme af-magic
antigen bundle vi-mode
# 保存更改

antigen apply

VIMODE='-- INSERT --'
function zle-line-init zle-keymap-select {
    VIMODE="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

RPROMPT='%{$fg[green]%}${VIMODE}%{$reset_color%}'
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

#autoload -U promptinit
#promptinit
