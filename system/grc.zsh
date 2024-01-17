# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
  [[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh
fi
