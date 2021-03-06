# gnu-sed(required brew install gnu-sed)
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

export PATH="$HOME/.nodenv/versions/*/bin:$PATH"

export LANG="ja_JP.UTF-8"
export HISTTIMEFORMAT='%y-%m-%d %H:%M:%S '
export HISTFILESIZE=10000
export HOMEBREW_BUNDLE_NO_LOCK=true

# nodenv settings
eval "$(nodenv init -)"

# source settings
for file in .{bashrc,inputrc}; do
  [[ -r "$file" ]] && [[ -f "$file" ]] && . "$file"
done

# java settings
export SDKMAN_DIR="$HOME/.sdkman"
if [ -d "${SDKMAN_DIR}" ]; then
  [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
fi
