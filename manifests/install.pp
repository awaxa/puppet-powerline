# installs every .otf format font in the cloned repository
class powerline::install {
  $fonts = split(generate('/usr/bin/env', 'git', "--git-dir=${::powerline::clone_dir}/.git", 'ls-files', '--', '*.otf'), "\n")
  #powerline::font { $fonts: }
  powerline::font { $fonts: }
}
