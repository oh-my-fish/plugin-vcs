function vcs.branch
  cat (vcs.root)/.hg/branch 2>/dev/null;
    or echo "default"
end
