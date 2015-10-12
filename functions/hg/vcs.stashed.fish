function vcs.stashed
  count (command hg shelve --list ^/dev/null) >/dev/null
end
