# SecurOS 2.0 - fish default config
set -U fish_greeting ""

# Show system info with Arch logo on interactive shell start
if status is-interactive
    fastfetch --logo arch
end
