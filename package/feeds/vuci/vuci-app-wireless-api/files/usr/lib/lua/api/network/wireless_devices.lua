LuaQ               ¨      A@   E     \    ÁÀ   Å    Ü@ Ë@AÜ Ú@  @ Ã Þ  ËA J  IÂIÂÜ
  É 
  É ÁÂJ IÃIÄIÄIÅIÅIÆIÆIÇ	AÉÇÉ È$     É $A     É $  É $Á  É AÉ	 ÁÁ	  KJÁA
 \A  Ê Â
 âA ÁI¤ I¤A I¤ IJÂ
 äÁ ÁËJAÂ Ü$ ÉJ J   ÁÂ ¢B I ÁÂ ¢B I	BdB 	Bd 	BdÂ 	BKJÁÂ \¤ I¤B    IJ ä ÂäÂ Âä ÂËJAC Ü$C É$ É$Ã ÉJ d 	CKJÁÃ \¤C IJ ä ÃËJAD Ü$Ä ÉJ d 	DKJÁÄ \¤D I¤ É¤Ä É¤ É¤D É¤ É ¤Ä É Þ    B      require    api/ConfigService 
   vuci.util    vuci.board    api.network.wireless_codes 	   has_wifi    new    create     delete    enabled_devices    options_arr    txpowers_ralink    12.5    0    25    11    37.5    14    50    16    62.5    17    75    18    87.5    19    100    20    txpower_step 	      txpower_steps_count 	      get_txpower_percentages    adjust_txpower    before_response_hook    PUT_section_init_hook    section 	   wireless    wifi-device    option    enabled    1    channel 	   validate    get    set    htmode    hwmode    ac    n    country    txpower    legacy_rates 	   distance    frag    rts    noscan    beacon_int    acs_exclude_dfs    get_device_status    get_device_options    get_status    get_options    GET_TYPE_status    GET_TYPE_options            5    I   ¤   Ä   Æ ÀA  A  A  ÆA ÁÜ Æ@ÁÚ@    Ê   E \@Z@  @ÂÁ   Â[@ ÀÿZ   À	Â   	B ÆÂ ÅB   Ü À B B ÆÂB    @ B ÆÂB C Î    BC Á ÚB   ÅB   @  Ü  Þ a  ÀòA ^         ubus    iwinfo    txpowerlist    device    sid    results    pairs    active    dbm 	   tostring 	      txpower_step    txpower_steps_count 	d      100                   E   F@À @ \ NÀ ^          math    floor 	                                   7   O    2   Z@         À   @    Ä   Æ@À  AÁ  A  ÆAA ÁÜ ÆÁFÁA @ @   @FÁA AB N@ @   D  FÂÁÂ \   C A @ÀÿFF@ÃKC ÆÁC BA A  \A      	   tonumber    ubus    iwinfo    txpowerlist    device    sid    results    txpower_step 	      txpower_steps_count    round 	d   	       dbm 
   table_set    config    txpower                     Q   W        F @ F@À Z   @E  FÀÀ  @ ä       \@        response_table 	      table    sort        S   U           @A  F@ Á  Ä   Ë ÀAA  À ÁÁ  ÜX  @           
   table_get 	   wireless    id    hwmode                                 Y        b   E   @  \ ÀÀ A FAA  	 @ AÀ ÀA         Å@ @ BÜ  Ú  WÀB W C  BCá   ýÆC É Ê   Á F@ FÄ@TLBÃB ÆD É!  ÀýC 	Á 
 AÁ "A EÁ @ E\@ BCÅB CÅÜ 	Áa  ÀýFC IJ  A Æ@ ÆÅ    ÔÌBÃIA¡   þC A  ÅÁ @ ÂEÜÀ  CCFÆAá  @þÆC É        require    vuci.wireless    wireless_options    device_options    sid    uci     ResponseError    Non-existent device provided    pairs    hwmodelist    b    g 	      options_arr    ipairs 
   txpwrlist 	   tostring    dbm    auto 	   freqlist    channel    htmodelist    countrylist    alpha2                                 @ @@              dt    is_bool                                 @ A  F@ Á   A Á@ Ú@    Á  Þ       
   table_get 	   wireless    sid 	   disabled    1    0                             &    À  @@   FÁ@  @@A ÆÀ@ Á@ÀA   FÁ@  Á  @   Á@  BÁÀ     ÀÀA Á A Á@ @C  A    Á Á @         1    table_delete 	   wireless    sid 	   disabled    enabled_devices 
   table_set    require    vuci.package_checker    is_installed    wifi_scanner 
   wifi_scan    radio0    two_g_enabled    five_g_enabled    0                        ¡         @ @@@   @ Á@ FA A  W@A Á  Â   Á Þ Æ B Ë@Â@ B ÁBÝ  Þ           current_data_block    htmode 
   table_get    config    sid    VHT20    165 .   165 channel is accepted only with 20MHz width    dt    check_array    options_arr 	   freqlist                     ¤   ¤         @ @@  F@ FÁÀ             dt    check_array    options_arr    htmodelist                     «   ¹     %    @ @@@   @ Á  FA A Á ÀËÀAA ÜÚ@   Â   A Þ Â ÀËÀAAÁ ÜÚ@   Â    Þ Æ@C ËÃ@ ÁC DÝ  Þ           current_data_block    htmode 
   table_get 	   wireless    sid    hwmode    ac    match    ^V :   Only VHT htmodes are accepted when ac hwmode is selected.    n    ^H 8   Only HT htmodes are accepted when n hwmode is selected.    dt    check_array    options_arr    hwmodelist                     º   Ã         @ A  F@ Á  @   Ã Þ  Ë AAA ÜÚ    Á Þ  Ë AAÁ ÜÚ   @ Á  Þ    	   
   table_get 	   wireless    sid    htmode    match    ^V    ac    ^H    n                     Ä   Ö     	!    À @   Å@  @ Á@Ü ÀÚ  @W A@ @A@   @ á  @ý@  ËA EÁ FÂA Á Ü@  ËÀB A AC Á Ü@            pairs    wireless_options    hwmodelist    b    g    add_critical_error 
   STD_CODES    INVALID_OPT 8   Legacy hwmode is not supported on this wireless device. 	   hwmode:     table_delete 	   wireless    sid    htmode                     Ù   Ù         @ @@  F@ FÁÀ             dt    check_array    options_arr    countrylist                     Ú          @ A  F@ Á  À @  A AA F@  @    À W BË@B KA ÆAA @ A \Ü    ÁBA A Ê  ÉÁC
AB  À "BÉA ÁD BA   E AÆÀD Æ@ÅÚ@   Ë A AA  @ ÁA ÜÅ     B   ÁBA A Ê  ÉÁC
AB  À "BÉA   ÁBAÁ  ÊA  @ É FEÁ \  À ÆBGÚB  À ÆBE@    ¡  ý Å   ÜCÇC  À CÅ@  AÅá  ýA   Ô  AÂ àÁÆCÇC  À CÅ   AÅßý  ÀËH EB FÈÂ IÁB	  @  ÆI ÜAË@ AB  @ ÁB Ã	 @  ÜA    (   
   table_set 	   wireless    sid    country 
   table_get    config    type        ralink    get_txpower_percentages    txpower    ubus    file    exec    command    /usr/sbin/iw    params    reg    set    current_data_block    adjust_txpower    channel    auto    iwinfo 	   freqlist    device    results 	   tonumber    ipairs    restricted 	   	ÿÿÿÿ   add_message    STATUS_CODES    CH_CHANGED    string    format Z   Channel %s is not available in the %s regulatory domain and has been auto-adjusted to %s.    api_key 	   tostring                           7     	Á   A  A  Á  Á B A Â Á C A Ã Á D A Ä Á E A Å ¢@ 
Ê   A A ÁA  A Â ÁÂ â@ F AF ÆF Â A     @G@FG KÁÇÀ  ] ^  FG KÁÇÀ   ] ^           5    10    15    20    25    30    35    40    45    50    55    60    65    70    75    80    85    90    95    100    12.5    37.5    62.5    87.5 
   table_get    config    sid    type        ralink    dt    check_array                       $    	    @ A@ F@ Á  @      @A ËA FA@ @ ÆÁA B BBB Ü@  ËB @ Ü@     
   table_get    config    sid    type        ralink 
   table_set    api_key    options_arr    txpowers_ralink    adjust_txpower                     %  0    	    @ A@ F@ Á  @      @AÀÅ ÁA BÜ  @   á  þÁ@ Þ  ËB @ Ý Þ        
   table_get    config    sid    type        ralink    pairs    options_arr    txpowers_ralink    100    get_txpower_percentages                     3  8        @ A  F@ Á  W A    Á@  A ÀA           
   table_get 	   wireless    sid    hwmode    11g 2   This option is only available for 2.4GHz devices.    dt    is_bool                     9  >        @ A  F@ Á  W A@     Z@   @ @             
   table_get 	   wireless    sid    hwmode    11g    1                     ?  I        @ A  F@ Á  W A@A A F@ ÁA Á @   @Â @A A F@ ÁA Á @ @@A A F@ ÁA Á @      
   table_get 	   wireless    sid    hwmode    11g 
   table_set    config    api_key        1    0                     L  L        @ @@  A  Á              dt    range 	    	ÿÿ                      O  S        @ @@  A  Á  À@     @@ A           dt    range 	   	*	  	   uinteger                     V  Z        @ @@  A  Á  À@     @@ A           dt    range 	    	+	  	   uinteger                     ]  ]        @ @@              dt    is_bool                     `  `        @ @@  A  Á              dt    range 	   	ÿÿ                      c  h        @ A  F@ Á  W A    Á@  A ÀA           
   table_get 	   wireless    sid    hwmode    11a 0   This option is only available for 5GHz devices.    dt    is_bool                     k  p    	      Á@   Ë@@ ÜÉ@Þ          require    vuci.wireless    device_status    id                     r  x          Á@   Ê@  É@ A ÆAA  É ÁA É Þ          require    vuci.wireless    id    options    device_options    uci 	   features    device_features                     z      (   F @ Z   @F@@ KÀ ÁÀ  @ \ W Á ÀK@A Å ÆÀÁ AA  ]  ^   KÀB Ë C F@ Ü ]   ^   @J   @@ @CÁ  A ¤         @ÀB       c           sid    uci    get 	   wireless    wifi-device    add_critical_error 
   STD_CODES    INVALID_SECTION    Device doesn't exist.    device    404    ResponseOK    get_device_status    foreach             
   D         @Ä  Ë@ÀF@ ÜIÀ      	      get_device_status    .name                                       (   F @ Z   @F@@ KÀ ÁÀ  @ \ W Á ÀK@A Å ÆÀÁ AA  ]  ^   KÀB Ë C F@ Ü ]   ^   @J   @@ @CÁ  A ¤         @ÀB       c           sid    uci    get 	   wireless    wifi-device    add_critical_error 
   STD_CODES    INVALID_SECTION    Device doesn't exist.    device    404    ResponseOK    get_device_options    foreach             
   D         @Ä  Ë@ÀF@ ÜIÀ      	      get_device_options    .name                                          K @ ]  ^           get_status                              K @ ]  ^           get_options                             