#!/bin/sh    
    
dpkg-query --show --showformat='${Package}\t${Installed-size}\t${Status}\n' |    
    awk '    
{    
    # evaluate installed packages only
    if($3 == "install"){    
        packages[$1] = $2    
    }    
}    
    
END {    
    # sort packages by size (change 'asc' to 'desc' to reverse the order)
    PROCINFO["sorted_in"] = "@val_num_asc"
    for (i in packages){    
        printf "%05.2fM | %s\n",
        packages[i] / 1024, # convert from kilobytes to megabytes
        i    
    }    
}    
'