# installs powerline fonts
class powerline (
  $repository   = 'Lokaltog/powerline-fonts',
  $clone_dir    = "${::boxen_srcdir}/powerline-fonts",
  $font_library = "/Users/${::boxen_user}/Library/Fonts",
  $fonts        = [
    'DroidSansMono/Droid Sans Mono for Powerline.otf',
    'Inconsolata-g/Inconsolata-g for Powerline.otf',
    'Inconsolata/Inconsolata for Powerline.otf',
    'InconsolataDz/Inconsolata-dz for Powerline.otf',
    'Meslo/Meslo LG L DZ Regular for Powerline.otf',
    'Meslo/Meslo LG L Regular for Powerline.otf',
    'Meslo/Meslo LG M DZ Regular for Powerline.otf',
    'Meslo/Meslo LG M Regular for Powerline.otf',
    'Meslo/Meslo LG S DZ Regular for Powerline.otf',
    'Meslo/Meslo LG S Regular for Powerline.otf',
    'SourceCodePro/Sauce Code Powerline Black.otf',
    'SourceCodePro/Sauce Code Powerline Bold.otf',
    'SourceCodePro/Sauce Code Powerline ExtraLight.otf',
    'SourceCodePro/Sauce Code Powerline Light.otf',
    'SourceCodePro/Sauce Code Powerline Medium.otf',
    'SourceCodePro/Sauce Code Powerline Regular.otf',
    'SourceCodePro/Sauce Code Powerline Semibold.otf',
  ],
) {

  repository { $clone_dir:
    ensure => present,
    source => $repository,
  }

  powerline::font { $fonts:
    clone_dir    => $clone_dir,
    font_library => $font_library,
    require      => Repository[$clone_dir],
  }
}
