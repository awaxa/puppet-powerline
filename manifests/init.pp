# installs powerline fonts
class powerline (
  $repository   = 'Lokaltog/powerline-fonts',
) {
  $clone_dir    = "${::boxen_srcdir}/powerline-fonts"
  $font_library = "/Users/${::boxen_user}/Library/Fonts"

  anchor { 'powerline::begin': } ->
  class { '::powerline::clone': } ->
  class { '::powerline::install': } ->
  anchor { 'powerline::end': }
}
