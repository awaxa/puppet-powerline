# clones powerline-fonts repository
class powerline::clone {
  repository { $::powerline::clone_dir:
    ensure => 'present',
    source => $::powerline::repository,
  }
}
