fish_add_path $HOME/scripts
fish_add_path /usr/local/sbin
fish_add_path /opt/homebrew/bin

set fish_greeting

export VISUAL=vim
export EDITOR="$VISUAL"

export XDG_CONFIG_HOME="/Users/gregoireciles/.config/"

export TERM=screen-256color

# theme
source (dirname (status --current-filename))/themes/nightfly.fish
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# fzf
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

if status is-interactive
	cd $HOME/Projects/
end