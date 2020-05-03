function lock
    if [ (uname) = 'Darwin' ]
        osascript -e 'tell application "System Events" to keystroke "q" using {command down, control down}'
    else if [ (uname) = 'Linux' ]
        gnome-screensaver-command -l
    else
        echo "UNSUPPORTED OS!!!"
    end
end
