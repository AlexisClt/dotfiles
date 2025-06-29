if status is-interactive
    set -Ux DBUS_SESSION_BUS_ADDRESS '$DBUS_LAUNCHD_SESSION_BUS_SOCKET'
end
set -x GPG_TTY (tty)

ssh-add -q --apple-use-keychain ~/.ssh/id_ed25519 > /dev/null 2>&1

source ~/.config/fish/functions/git_aliases.fish
