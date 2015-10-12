function vcs.dirty
  command hg summary ^/dev/null | command grep -q 'commit: (clean)' ^/dev/null
end
