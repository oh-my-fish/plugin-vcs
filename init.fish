function init -a path --on-event init_vcs
  autoload $path/functions/{git,hg,svn}
end
