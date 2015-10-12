function vcs.svn.dirty
  count (command svn status -q ^/dev/null) >/dev/null
end
