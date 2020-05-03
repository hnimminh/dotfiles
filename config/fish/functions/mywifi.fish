# for MACOSX only
function mywifi
    set nodename (/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}')
    set nodepass (security find-generic-password -wa $nodename)
    echo name: \"$nodename\" \npassword: \"$nodepass\"
end
