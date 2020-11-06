echo "What do you want to do?\n 1. Connect to the nearest server.\n 2. Connect to a specific server.\n 3. Disconnect.\n 4. Configure NordVPN Settings.\n"
read -p "Choice [1-4]: " choice

if [ $choice = "1" ] 
then
    nordvpn c
    echo "Connected..."
fi

if [ $choice = "2" ]
then
    read -p "Server [Country/City]:" serverChoice
    nordvpn c $serverChoice
    echo "Connected to $serverChoice."
fi

if [ $choice = "3" ]
then
    nordvpn d
fi

if [ $choice = "4" ]
then
echo "\n"
    echo "   Which settings do you want to change?\n\n    1. Restore NordVPN Defaults.\n    2. Set NordVPN DNS Servers\n    3. Toggle Kill Switch.\n    4. Toggle Auto-Connect.\n    5. Toggle CyberSec\n"
    read -p "Choice [1-5]: " configChoice
    
    if [ $configChoice = "1" ]
    then
        nordvpn set defaults
        echo "Restored NordVPN defaults."
    fi

    if [ $configChoice = "2" ]
    then
        read -p "Which DNS servers do you want to use (2 or more): " dnsServers
        nordvpn set dns $dnsServers
        echo "Set DNS servers to $dnsServers."
    fi

    if [ $configChoice = "3" ]
    then
        read -p "On/Off?: " killSwitchToggle
        nordvpn set killswitch $killSwitchToggle
        echo "Set Kill Switch to $killSwitchToggle."
    fi
    
    if [ $configChoice = "4" ]
    then
        read -p "On/Off?: " autoConnectToggle
        nordvpn set autoconnect $autoConnectToggle
        echo "Set Auto-Connect to $autoConnectToggle."
    fi

    if [ $configChoice = "5" ]
    then
        read -p "On/Off?: " cyberSecToggle
        nordvpn set cybersec $cyberSecToggle
        echo "Set CyberSec to $cyberSecToggle."
    fi
fi
read varName
