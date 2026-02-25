set -gx GPG_TTY (tty)

if status is-interactive
    fish_config theme choose catppuccin-mocha

    alias lg="lazygit"
end
