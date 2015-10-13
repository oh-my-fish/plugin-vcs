function vcs.branch
  cat (vcs.root)/.hg/branch ^/dev/null;
    or echo "default"
end
