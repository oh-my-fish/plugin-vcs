function vcs.dirty
  command hg summary 2> /dev/null | command grep -q 'commit: (clean)' 2> /dev/null
end
