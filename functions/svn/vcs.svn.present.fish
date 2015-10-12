function vcs.svn.present
  command svn info >/dev/null ^&1
end
