function vcs.dirty
  count (command svn status -q 2>/dev/null) >/dev/null
end
