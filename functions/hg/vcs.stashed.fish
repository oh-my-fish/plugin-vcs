function vcs.stashed
  count (command hg shelve --list 2>/dev/null) >/dev/null
end
