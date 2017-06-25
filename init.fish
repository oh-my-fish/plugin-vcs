function init -a path --on-event init_vcs
  for vcs in git hg svn
    source $path/functions/$vcs/vcs.$vcs.present.fish
  end

  function _vcs.pwd -v PWD -V path
    autoload -e $path/functions/{git,hg,svn}

    if set -l vcs (vcs.name)
      autoload $path/functions/$vcs
    end
  end

  _vcs.pwd
end
