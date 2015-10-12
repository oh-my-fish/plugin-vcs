function vcs.name
  if test "$PWD" = "$_vcs_name_path_cache[1]"
    echo $_vcs_name_path_cache[2]
    return 0
  end

  for name in git hg svn
    if eval vcs.$name.present
      set -g _vcs_name_path_cache $PWD $name
      echo $_vcs_name_path_cache[2]
      return 0
    end
  end

  set -e _vcs_name_path_cache
  return 1
end