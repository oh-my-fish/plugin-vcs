function vcs.branch
  command git symbolic-ref --short HEAD 2>/dev/null;
    or command git show-ref --head -s --abbrev | head -n1 2>/dev/null
end
