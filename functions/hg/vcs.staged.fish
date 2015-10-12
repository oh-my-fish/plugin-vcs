function vcs.staged
  contains 'M' (command hg status ^/dev/null | cut -d' ' -f1 | sort -u)
end
