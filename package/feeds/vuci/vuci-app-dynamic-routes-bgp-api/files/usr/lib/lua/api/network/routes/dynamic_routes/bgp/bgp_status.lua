LuaQ               	      A@   K@ \ ¤   I^          require    api/FunctionService    new    GET_TYPE_status                	   E   @  \    Á   ÆÀÀ  Ü ÁÀ AA  Ú@   KA ] ^  FÁAÁ   \  KA À ]^    	      require 
   vuci.util    luci.jsonc    exec    ( usleep 0; echo admin01; usleep 0; echo 'show bgp neighbors json';) 2>/dev/null | nc 127.0.0.1 2605 2> /dev/null | sed 1,9d | head -n -2    ( usleep 0; echo admin01; usleep 0; echo 'show ip bgp view all json';) 2>/dev/null | nc 127.0.0.1 2605 2> /dev/null | sed 1,10d | head -n -1    ResponseOK    parse    ,                             