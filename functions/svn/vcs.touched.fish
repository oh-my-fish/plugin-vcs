function vcs.touched
  count (command svn status ^/dev/null | grep -Ev 'Performing|$\s*^' | cut -c1) >/dev/null ^&1
end
