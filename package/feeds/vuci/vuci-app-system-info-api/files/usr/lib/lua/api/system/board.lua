LuaQ                     A@   K@ \    Αΐ   Ε    ά   AA  E   \ €            I^          require    api/FunctionService    new 	   nixio.fs 
   vuci.util    luci.jsonc    vuci.board    GET_TYPE_status        	   B    ―   E   @  \ Fΐ \    Δ   Λ Αά ΐΔ  Ζ@Α AΑ άΪ    ΑA    
  J  @FABIFAABIFABIFAΑBIFACIFAACIFACIKΑ ΑΑ Β \ ZA  ΐ KΑ ΑΑ  \  AAΑΑ Β  A      ΖAΔΑΖΑΔΑΔ ΖAΕ EAΒ  ά  ΑΔ ΖΕ ά Ϊ  B @   @EΒ FΗB ΐ \AΑG EA  BH  GΓH!B  ώ
  D FΙΒ	 \ SS	B D FΙB
 \ Z   J  JΔ ΖΒΚ ά     	ΕB   ά  @ @ΐEΕ FΜ
ΐ F @ 
ΥE\E!  @ύα   ϋΖΒ@Γ@CBC    
  ΙΖΒ@ΖBΒΓ@CB ΓHJC  ICΙBKΒL ΐ ]^    4      require 	   vuci.uci    cursor    board    get_all    ubus    mnfinfo    get    name    serial    mac    macEth    batch    hwver    blver    system    @system[0] 	   hostname    device_name    devicename    fw_version    trim 	   readfile    /etc/version    /etc/firmware-date 	   tonumber    fw_build_date    os    date    %Y-%m-%d %H:%M:%S 
   cpu_count 	       /proc/cpuinfo    gmatch    processor%s*:%s*%d+ 	      static    ipv6    access    /proc/net/ipv6_route 	   features    /sbin/usb_serial_adapters.sh    parse    exec    usb_serial_adapters.sh    pairs    ipairs    table    insert    _    external_devices    ResponseOK                             