function lock
    osascript -e 'tell application "System Events" to keystroke "q" using {command down, control down}'
    gnome-screensaver-command -l
end