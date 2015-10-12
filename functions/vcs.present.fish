function vcs.present
  if test "$PWD" = "$_vcs_present_path_cache[1]";
    return $_vcs_present_path_cache[2]
  end

  for name in git hg svn
    if eval vcs.$name.repo
      set -g _vcs_present_path_cache $PWD 0
      return (test "$_vcs_present_path_cache[2]" = 0)
    end
  end
  
  set -g _vcs_present_path_cache $PWD 1
  return 1
end