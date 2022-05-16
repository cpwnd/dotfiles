# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

dotfiles=~/Dokumente/dotfiles

# Config von Till:

source /home/chris/.ansible/files/antigen.zsh

autoload -U compinit && compinit
autoload -U bashcompinit && bashcompinit

# Load dotfiles
for file in $dotfiles/.{alias,functions}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done


# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
# Syntax highlighting bundle.

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle changyuheng/zsh-interactive-cd !!! achtung!!!

# Load the theme.
#antigen theme agnoster
# antigen theme robbyrussell
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# Config Till Ende

#working ansible

# Extending path
path+=('/opt/infer/infer/bin')
path+=('/usr/local/racket')
export PATH
export JAVA_HOME=/usr/lib/jvm/default-java

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.profile

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/chris/Code/1Giessen/data-viz/ev-in-eu/google-cloud-sdk/path.zsh.inc' ]; then . '/home/chris/Code/1Giessen/data-viz/ev-in-eu/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/chris/Code/1Giessen/data-viz/ev-in-eu/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/chris/Code/1Giessen/data-viz/ev-in-eu/google-cloud-sdk/completion.zsh.inc'; fi

alias gap="git add --patch"
