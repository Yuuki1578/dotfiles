mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

$env.config = {
  show_banner: false,
  buffer_editor: "hx",
  cursor_shape: {
    vi_insert: "inherit",
    vi_normal: "inherit",
    emacs: "line",
  },
}

$env.PATH = ($env.PATH | append ($env.HOME | path join ".local/bin"))

export-env {
  $env.PAGER = "bat -l c"
  $env.MANPAGER = $env.PAGER
}

alias l = clear
alias ll = ls -l
alias la = ls -a
alias hx = hx --log ($env.TMPDIR | path join "helix.log")
