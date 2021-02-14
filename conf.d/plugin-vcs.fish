function init -a path --on-event init_vcs
  for vcs in git hg svn
    source $path/functions/$vcs/vcs.$vcs.present.fish
  end

  autoload $path/functions/none

  function vcs.refresh -v PWD -V path
    autoload -e $path/functions/{git,hg,svn,none}

    if set -l vcs (vcs.name)
      autoload $path/functions/$vcs
      return 0
    end

    autoload $path/functions/none
    return 1
  end

  vcs.refresh
end
