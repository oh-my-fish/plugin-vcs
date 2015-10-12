function vcs.branch
  command git symbolic-ref --short HEAD ^/dev/null;
    or command git show-ref --head -s --abbrev | head -n1 ^/dev/null
end
