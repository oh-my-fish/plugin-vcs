function vcs.hg.dirty
  command hg summary ^/dev/null | command grep -q 'commit: (clean)' ^/dev/null
end
