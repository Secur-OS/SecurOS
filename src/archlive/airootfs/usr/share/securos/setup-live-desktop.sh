#!/bin/bash
# SecurOS: default wallpaper, dark theme, SecurOS launcher icon, pin Konsole
FLAG="$HOME/.config/securos-desktop-done"
WALLPAPER="/usr/share/backgrounds/securos/default-bg.png"
SECUROS_ICON="/usr/share/securos/pfp.png"

[ -f "$FLAG" ] && exit 0
[ ! -f "$WALLPAPER" ] && exit 0

# Wait for Plasma to be ready
sleep 3

# Set wallpaper
if command -v plasma-apply-wallpaperimage &>/dev/null; then
    plasma-apply-wallpaperimage "$WALLPAPER" 2>/dev/null || true
fi

# Apply Breeze Dark (dark theme)
if command -v plasma-apply-colorscheme &>/dev/null; then
    plasma-apply-colorscheme BreezeDark 2>/dev/null || true
fi
if command -v lookandfeeltool &>/dev/null; then
    lookandfeeltool -a org.kde.breeze_dark 2>/dev/null || true
fi

# Set application launcher (Kickoff) icon to SecurOS logo
CONF="$HOME/.config/plasma-org.kde.plasma.desktop-appletsrc"
if [ -f "$CONF" ] && [ -f "$SECUROS_ICON" ] && command -v kwriteconfig6 &>/dev/null; then
    # Find [Containments][i][Applets][j] where Plugin=org.kde.plasma.kickoff, then set icon in [Configuration][General]
    kickoff_group=""
    while IFS= read -r line; do
        if [[ "$line" =~ ^\[Containments\]\[([0-9]+)\]\[Applets\]\[([0-9]+)\]$ ]]; then
            current_section="${line}"
        elif [[ -n "$current_section" && "$line" == "Plugin=org.kde.plasma.kickoff" ]]; then
            kickoff_group="${current_section}[Configuration][General]"
            break
        elif [[ "$line" =~ ^\[.*\]$ ]]; then
            current_section=""
        fi
    done < "$CONF"
    if [ -n "$kickoff_group" ]; then
        kwriteconfig6 --file plasma-org.kde.plasma.desktop-appletsrc --group "$kickoff_group" --key icon "$SECUROS_ICON" 2>/dev/null || true
    fi
fi

# Pin Konsole to task manager
if [ -f "$CONF" ] && command -v kwriteconfig6 &>/dev/null; then
    for g in $(grep -oP '\[Containments\]\[\d+\]\[Applets\]\[\d+\]\[Configuration\]\[General\]' "$CONF" 2>/dev/null || true); do
        LAUNCHERS=$(kreadconfig6 --file plasma-org.kde.plasma.desktop-appletsrc --group "$g" --key launchers 2>/dev/null)
        if [ -n "$LAUNCHERS" ]; then
            case "$LAUNCHERS" in
                *konsole.desktop*) ;;
                *) kwriteconfig6 --file plasma-org.kde.plasma.desktop-appletsrc --group "$g" --key launchers "applications:org.kde.konsole.desktop,$LAUNCHERS" 2>/dev/null || true ;;
            esac
            break
        fi
    done
fi

mkdir -p "$(dirname "$FLAG")"
touch "$FLAG"
