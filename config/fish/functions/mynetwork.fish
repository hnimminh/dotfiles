function mynetwork 
    # use "--argument question" and "$question" or "$argv"                                                                                                                          
    
    set public (curl -s ifconfig.me)
    set local (ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
    set broadcast (ifconfig | grep -Eo 'broadcast ([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*')
    set mac (ifconfig | grep -Eo '([0-9a-eAe]{2}:){5}[0-9a-eA-e]{2}')
    
    echo WAN\t\t: $public \nLAN\t\t: $local \nBROADCAST\t: $broadcast \nMAC\t\t: $mac 
end
