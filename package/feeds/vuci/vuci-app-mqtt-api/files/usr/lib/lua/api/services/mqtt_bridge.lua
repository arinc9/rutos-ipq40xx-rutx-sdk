LuaQ                     A@   E     \ À@ 
A  	AAÊ@  ÉÀABA Á  d  	AC¤A    AC @ ¤  IAC ÄAÁäÁ  ÁËACA Ü$ ÉBCB dB 	BKBCÁ \¤ IBCÃ äÂ ÂËBCA Ü$ É$C É$ ÉCCÃ ÊC  ÉCA 	ÇKCCÁÃ 
D  	DA\ IÇCC JD  IDA ÇËCCAD Ü$Ä ÉDC 	ÄÈd 	DKDCÁ	 \¤D IDCE	 Éä ÄËDCAÅ	 ÜÉÊ$Å ÉECE
 	Êd 	EdE 	EKECÁ
 \¤ IECÆ
 äÅ ÅËECA Ü$ ÉFCF dF 	FKFCÁ \¤ I¤Æ    ¤   ¤F ¤ ¤Æ     4      require    api/ConfigService    vuci.certificates    new    increment_name    TOPIC_REQUIRED 	      section 
   mosquitto    bridge    create_defaults    require_validation    option    client_enabled 	   validate    connection_name 
   maxlength 	@      cfg_require    bridge_protocol_version    remote_addr    remote_port    use_remote_tls    device_brg_files    set    get    bridge_cafile    file 
   file_size 	      bridge_certfile    bridge_keyfile    bridge_tls_version    bridge_alpn 	þ      use_bridge_login    remote_clientid 	      remote_username 	      remote_password    try_private    cleansession    notifications    notifications_local    keepalive_interval    UPLOAD_after_upload_hook    validate_topics    POST_validate_section_hook    PUT_validate_section_hook "   DELETE_before_section_delete_hook        
           JÀ  I@@IÀ@I@A^          bridge_protocol_version    mqttv31    remote_port    1883    keepalive_interval    60                             3   J    Á@    b@À@ A FAA  @  @ ÀA A   À B@Å@ ÆÂ  AÁ Ü@Å@ ÆÂ  A Ü@ËÀ@ FA AA ÁA ÜÚ@  @ ÆÀA Æ@ÃÚ    Â A B@  A  JA  IA 	A        bridge_protocol_version    remote_addr    remote_port    get_abs_value    config    sid    use_remote_tls    current_data_block    1    table    insert    bridge_cafile    bridge_tls_version    use_bridge_login    remote_clientid    require                     %   '         @ @@              dt    is_bool                     ,   7           Ë @ AA    ä            Ü@   @Â   Á  @  Þ Æ@A ËÁ@ Ý Þ           table_foreach 
   mosquitto    bridge    Bridge with connection name '    ' already exists    dt    nospace        .   2       F @     F@@   @W @ B  H          connection_name    .name    sid                                 :   <     
    @ @@  J   ÁÁ  bA              dt    check_array    mqttv31 	   mqttv311                     ?   A         @ @@              dt    host                     D   F         @ @@              dt    port                     I   K         @ @@              dt    is_bool                     N   P         @ @@              dt    is_bool                     Q   S         @ A@ F@ Á  À @      
   table_set    config    sid    _device_brg_files                     T   V        K @ Æ@@ @ AÁ  ] ^        
   table_get    config    sid    _device_brg_files                     b   d     
    @ @@  J   ÁÁ   AB bA              dt    check_array    tlsv1    tlsv1.1    tlsv1.2    tlsv1.3                     h   j         @ @@              dt    string                     m   o         @ @@              dt    is_bool                     s   u         @ @@              dt    credentials_validate                     y   {         @ @@  B              dt    credentials_validate                                 @ @@  B              dt    credentials_validate                                Z   @      @            set    unset                                 @ @@              dt    is_bool                                 @ @@              dt    is_bool                                 @ @@              dt    is_bool                                 @ @@              dt    is_bool                                  @ @@  A  Á              dt    irange 	   	ÿÿ                      ¤   ¬    	%   Æ @W@À@Æ @WÀ Æ @ÀÀÀÄ   Ë Á@ ÜW@ÁÀ  ÁA@ A  Â AB  ÁÁ  AÂ AB A Á  AÊ@  É@Þ          option    bridge_cafile    bridge_certfile    bridge_keyfile    validate_cert 	       os    remove 	      add_critical_error 	      Incorrect file uploaded.    Upload 	      File does not exist.    path                     ®   ¹       A   @@ @ FÁ@  @  @ @A  AËA FÁA  ä        Ü@ À  Ë@B D  FÂÁ Ü@      	       get_abs_value    config    sid    connection_name    current_data_block    table_foreach    main_config    topic    add_critical_error    TOPIC_REQUIRED 6   At least one topic is required to enable MQTT bridge.        ±   µ       F @      D  L@À H          connection_name 	                                   »   Á        K @ Æ@@ @ AÁ  \Z@  @ F A FÀÀ Z   @@Á À A @ ÀA @         get_abs_value    config    sid    client_enabled    current_data_block    1    require_validation    validate_topics                     Ã   Ò     -   K @ Æ@@ @ AÁ  \Z@    C   A À@@      Z   À   @W@ ÀË@A FA@  ä            Ü@ËÀA FB @ ÁA ÜÚ@  @ Æ A Æ@ÂÚ   @ÂÀ ÁB A C A      
   table_get    main_config    sid    connection_name    current_data_block    table_foreach    topic    get_abs_value    config    client_enabled    1    require_validation    validate_topics        Ç   Ë       F @     ÀD  K@À Ä  ÆÀÁ@ A   \@         connection_name 
   table_set    main_config    .name                                 Ô   Û        K @ Æ@@ @ AÁ  \ A A@ AA ¤         @     
   table_get    main_config    sid    connection_name    table_foreach    topic        Ö   Ú       F @     @D  K@À Ä  ÆÀÁ@ \@         connection_name    table_delete    main_config    .name                                         