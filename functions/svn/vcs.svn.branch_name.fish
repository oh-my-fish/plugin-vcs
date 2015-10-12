function vcs.svn.branch_name
  basename (command svn info | sed -n '/^URL:.*$/p' | sed 's/URL:\s*//')
end
