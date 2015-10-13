function vcs.root
  set -l dir $PWD

  while test "$dir" != "/"
    if test -d $dir'/.hg'
      echo "$dir"
      return 0
    end

    # Go up one directory
    set -l dir (dirname $dir ^/dev/null)
  end

  return 1
end
