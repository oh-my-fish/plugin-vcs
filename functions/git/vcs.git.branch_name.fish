function vcs.git.branch_name
  command git symbolic-ref --short HEAD ^/dev/null
end
