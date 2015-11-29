function vcs.name
  for name in git hg svn
    if eval vcs.$name.present
      echo $name
      return 0
    end
  end
  return 1
end
