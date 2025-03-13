if status is-interactive
    set -Ux DBUS_SESSION_BUS_ADDRESS '$DBUS_LAUNCHD_SESSION_BUS_SOCKET'
end
set -x GPG_TTY (tty)
