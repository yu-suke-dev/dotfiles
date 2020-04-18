# gnu-sed(required brew install gnu-sed)
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

export LANG="ja_JP.UTF-8"
export HISTTIMEFORMAT='%y-%m-%d %H:%M:%S '
export HISTFILESIZE=10000
export HOMEBREW_BUNDLE_NO_LOCK=true

# source setting file
for file in .{bashrc,inputrc}; do
  [[ -r "$file" ]] && [[ -f "$file" ]] && . "$file"
done
