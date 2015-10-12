function vcs.branch
  command git symbolic-ref --short HEAD ^/dev/null
end
