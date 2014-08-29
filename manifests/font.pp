# installs a font file
define powerline::font {
  $font = split($title, '/')
  $font_name = $font[1]
  file { "${::powerline::font_library}/${font_name}":
    ensure  => file,
    source  => "${::powerline::clone_dir}/${title}",
  }
}
