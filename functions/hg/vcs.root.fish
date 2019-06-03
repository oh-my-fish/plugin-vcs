function vcs.root
  set -l dir $PWD

  while test "$dir" != "/"
    if test -d $dir'/.hg'
      echo "$dir"
      return 0
    end

    # Go up one directory
    set dir (dirname $dir 2>/dev/null)
  end

  return 1
end
