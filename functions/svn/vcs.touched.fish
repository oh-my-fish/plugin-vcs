function vcs.touched
  count (command svn status 2>/dev/null | grep -Ev 'Performing|$\s*^' | cut -c1) >/dev/null 2>&1
end
