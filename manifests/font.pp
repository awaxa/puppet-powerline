# installs a font file
define powerline::font (
  $clone_dir    = $powerline::clone_dir,
  $font_library = $powerline::font_library,
) {
  $relative_path = split($title, '/')
  $basename = $relative_path[1]
  file { "${font_library}/${basename}":
    ensure  => file,
    source  => "${clone_dir}/${title}",
  }
}
