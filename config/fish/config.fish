# USE NERD FONT ONLY
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
# COLOR STYLE
set -g theme_color_scheme dracula
# SHOW CURRENT USER
set -g default_user your_normal_user
# DATETIME
set -g theme_display_date yes
set -g theme_date_format "+ %H:%M:%S %Z %d-%m" 
set -g theme_date_timezone Asia/Ho_Chi_Minh
# GIT SETTING 
set -g theme_display_git yes
#
#set -g theme_use_abbreviated_branch_name yes
#
#
####### VERBAL OPTIMIZATION USE
#
set -g theme_title_use_abbreviated_path yes
set -g theme_display_ruby no
#
#
#
####### ALIAS
alias svi='sudo vi'
alias untar='tar -zxvf'
alias c='clear'
alias mkdir="mkdir -pv"
alias http='sudo python3 -m http.server 80 --bind 0.0.0.0' # python -m SimpleHTTPServer 8080'
alias rcp='rsync -ah --info=progress2'
#
alias cd1="cd .."
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias cd5="cd ../../../../.."
#
alias h="history"
alias hg="history | grep"
#
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
