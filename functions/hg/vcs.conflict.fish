function vcs.conflict
  contains 'U' (command  hg resolve --list ^/dev/null | cut -c1 | sort -u)
end
