function vcs.staged
  contains 'M' (command hg status 2>/dev/null | cut -d' ' -f1 | sort -u)
end
