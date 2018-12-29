function vcs.conflict
  contains 'U' (command  hg resolve --list 2>/dev/null | cut -c1 | sort -u)
end
