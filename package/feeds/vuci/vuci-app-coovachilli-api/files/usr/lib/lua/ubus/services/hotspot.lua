LuaQ               
D   
   C � �   �   
�  	���	��   
�  	���	A��@  $  J� � �A  
  �A I��� �  
  �A I���� ��        � 
  �A I��� �    
�  E� F�	B�E� F�	B���A I���� �A    
�  E� F�	B��E� F�	B���A I��� � 
�  E� F�	B��E� F��	B���A I��^  �       pptp    name    walled_garden    value D   .cloud4wi.com
.facebook.com
.facebook.net
.linkedin.com
.licdn.com
 "   .hotspotsystem.com
.facebook.com
    log    configuration_profiles    change_profile 	   add_user 	   username    libubus    STRING 	   password    save_user_password    sid    save_enabled    enabled    BOOLEAN                &   �   �@��  A�  ��  �AA���� A � �A����܀ �@��   @ ���@ ��    C@�� �  AC �� �� � @�� A  @ �  A   �       util    ubus    file    exec    command    /usr/bin/openssl    params    passwd    -1    stdout        UBUS_STATUS_UNKNOWN_ERROR    trim    set    chilli 	   password    UBUS_STATUS_NOT_FOUND    UBUS_STATUS_OK                        6     >   �   �@  �� ��@��� ��  
  J  �A���� �  @��AAA� ܁� ���A�A �   �@�
C FC�	C��F��	C�F��	C��F�	C�FC�	C��F��	C�F��Z  ��E FC��� ���\��ZC    �A� 	C��F�	C�FC�	C��I�  ��Ł ���   JB  IB��A� �       require    vuci.sqlite    init    /var/hotspot.db 	   database    select z   SELECT username, ip, mac, input_octets, output_octets, sessiontime, start_time, terminate_cause, session FROM statistics;    close    ipairs 	   username    ip    mac    input_octets    output_octets    sessiontime    start_time    os    date    %x %X    -    terminate_cause    session    ubus    reply    log                     9   =     
   �   �   �@��  �  ���  ��  @ �A��@   ��@ ƀ�   JA  I����@� �       fs    dir    /etc/chilli/configs    table    insert    ubus    reply    configProfiles                     @   U    N   �   � � �   ���@  ƀ�� A�  ܀��   @ ��  �  �@ � � �� �A@�� [ � �KB�A \���� ������B  Ƃ�  A� ܂��   ��BA ܂�
�  F��K��� \��F�	C��F�	C��E� F��� � \C���  @�� �  � �ŀ ���  D  �@�� � @� �ŀ ���  D� �@�ŀ ���   JA  I� ��@� �       file    string    match    %.%.    UBUS_STATUS_INVALID_ARGUMENT    /etc/chilli/configs/    fs 	   readfile    split    
    pairs    option    '    name 	        	      value    table    insert 	   cloud4wi    hotspotsystems    ubus    reply    options                     X   i    )   � � �@� �   @ ��@  @ ��   �  A � AA�� K�A��� \A�KB�A � C���  �� ��Å\� �  �  �@��� �ACAB �A�Ł ���   J�  I��IB���A��  �    	   username 	   password    UBUS_STATUS_INVALID_ARGUMENT    require 	   vuci.uci    cursor    set_session_id    ubus_rpc_session    section    chilli    user    group    default    commit    ubus    reply    res    sid                     l   w    	    � � �@� �   @ ��@  @ ��   �  A � AA�� K�A��� \A�D  � �  �\� �BB �A��� ��B�  
B  	B��A�^  �       sid 	   password    UBUS_STATUS_INVALID_ARGUMENT    require 	   vuci.uci    cursor    set_session_id    ubus_rpc_session    commit    chilli    ubus    reply    res                     z   �     w   � � �@� �    ��  @�� W�@@ �  A A� � �A�� KB�A� \A�K�B��   AB  ��\A K�B� B A� �   � ��� �B    �� \A C��AD� A� �    ��A��    �� �ADA� � �B     �A��A  ���AEA� � �B 
C 	CC�	Ƌ	�ƌ	ƍ	CG��A ��BD�� �� $�    �B��A  @�B A� � H�� KBE�� � KCH\� ��  �CC��ɑ\B ZA  ��BE�� ��  JC ICI�I�F�ICC�IʓIĀB @��B�� �B�C  A B �  ��Z  @���B� FB��B  �� �A  � *      sid    enabled    type    boolean    UBUS_STATUS_INVALID_ARGUMENT    require 	   vuci.uci    cursor    set_session_id    ubus_rpc_session    set    chilli    uhttpd    hotspot 	   disabled    0    1    foreach 	   firewall    rule    zone    section    name    input    REJECT    output    ACCEPT    forward    device    tun0 tun1 tun2 tun3    forwarding    vuci.firewall    init    next_id    src    dest    wan    Hotspot_input    target 
   dest_port $   53 67-68 444 81 1812 1813 3991 3990    .name        �   �       F @ @� � �   B   ^   �       name    Hotspot_input                     �   �       F @ @� � �   B   ^   �       name    hotspot                     �   �    
   F @ @� @�F�@ �� � �   B   ^   �       src    hotspot    dest    wan                                         