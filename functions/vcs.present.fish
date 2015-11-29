function vcs.present
  for name in git hg svn
    if eval vcs.$name.present
      return 0
    end
  end
  return 1
end
