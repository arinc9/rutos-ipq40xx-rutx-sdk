LuaQ               	(      A@   E     \ ΐ@ 
A  	AAδ      ΐ ΛΐAA A ά ΒΑ 	AA	ΓdA  	Ad  	AKΒΑA 
B  	BA\ €Α  I€ €A              require    api/ConfigService 	   nixio.fs    new 
   anonymous    before_update    section    user_groups    phone    option    name    cfg_require 
   maxlength 	   	   validate    set    tel    list    PUT_validate_section_hook "   DELETE_before_section_delete_hook           "    I   F @ F@ΐ Z   ΐ@ Α@ FA A     ΐW@ @Κ  
Α  	AΑ	ΑA	ABJΑ  IΒIΑAIABΑ  ΑΒΑAABΚΑ  ΙΓΙACΙC
Β  	ΒΓ	D	BBJΒ  IΒΓIBDIBBΒ  ΒΓDBBΚΒ  ΙΒΓΙΒDΙBBβ@  @@D  FBΕ ΖΒ@Β\ Z   KΒE ΖΒ@Ad               \Bγ  !  ΐϊ£           current_data_block    name 
   table_get    config    sid 
   sms_utils    section    rule    option    group    call_utils    events_reporting 
   iojuggler    action    phone_group    sms_gateway    reply    fwd_to_http    fwd_to_sms    fwd_to_smtp    ipairs    access    /etc/config/    table_foreach                  D   F ΐ F@      D  K@ΐ Δ   ΖΐΑ@ D  Fΐ\@         option 
   table_set    config    .name                                 *   1         @ A@ A  €         @ΐ@  A              table_foreach    config    phone    dt    default_validation        +   /       F @     F@@   @W @D  Kΐΐ Ε  Ζ@Α \@         name    .name    sid    add_critical_error 
   STD_CODES    UCI_CREATE_ERROR    name already exists                                 2   5     	    @ @ @@ @ FΑ@ A ΐ @         before_update 
   table_set    config    sid    api_key                     8   :         @ @@              dt    phonedigit                     <   A         K @ Ζ@@ @ AΑ  \Z   F A Fΐΐ Z   F A Fΐΐ T  W@Α @F A Fΐΐ FΑ ΐΑ @F A Fΐΐ T  Α  K B Ε@ ΖΒΑ \@         get_abs_value    config    sid    tel    current_data_block 	    	          add_critical_error 
   STD_CODES    INVALID_OPT 1   Phone number is required and can not be deleted.                     C       D   K @ Ζ@@ @ AΑ  \ A A A €         @ A Α A €A         @ A Α AA €         @ A Α A €Α         @ A Α AΑ €        @ A  A €A        @ A A A €        @   CΑΐ      A  AA €Α        @     
   table_get    config    sid    name    table_foreach    events_reporting    rule    sms_gateway    reply    fwd_to_http    fwd_to_sms    fwd_to_smtp 
   sms_utils    call_utils    access    /etc/config/iojuggler 
   iojuggler    action        F   M    !   F @ Z    F @ @ΐ @F@@ Z   F@@     D  Kΐ Αΐ  A AA  \@F@A Z   @F@A Α D  KΐΑ Αΐ  A AA  \@   	      recipient_format    group    table_delete    events_reporting    .name    enable    1 
   table_set    0                     O   V       F @ Z   @F @ @ΐ F@     D  Kΐΐ Α  AA A  \@FA Z   @FA ΐΑ D  K Β Α  AA A A \@   
      mode    user_group    group    table_delete    sms_gateway    .name    enabled    1 
   table_set    0                     X   _       F @ Z   @F @ @ΐ F@     D  Kΐΐ Α  AA A  \@FA Z   @FA ΐΑ D  K Β Α  AA A A \@   
      mode    user_group    group    table_delete    sms_gateway    .name    enabled    1 
   table_set    0                     `   g       F @ Z   @F @ @ΐ F@     D  Kΐΐ Α  AA A  \@FA Z   @FA ΐΑ D  K Β Α  AA A A \@   
      mode    user_group    group    table_delete    sms_gateway    .name    enabled    1 
   table_set    0                     h   o       F @ Z   @F @ @ΐ F@     D  Kΐΐ Α  AA A  \@FA Z   @FA ΐΑ D  K Β Α  AA A A \@   
      mode    user_group    group    table_delete    sms_gateway    .name    enabled    1 
   table_set    0                     q   x       F @ Z   @F @ @ΐ F@@     D  Kΐ Αΐ  A AA  \@F@A Z   @F@A Α D  KΐΑ Αΐ  A AA  \@   	      allowed_phone    group    table_delete 
   sms_utils    .name    enabled    1 
   table_set    0                     z          F @ Z   @F @ @ΐ F@@     D  Kΐ Αΐ  A AA  \@F@A Z   @F@A Α D  KΐΑ Αΐ  A AA  \@   	      allowed_phone    group    table_delete    call_utils    .name    enabled    1 
   table_set    0                               F @ Z   ΐF @ @ΐ  F@ Z   @F@     @D  Kΐΐ Α  AA A  \@        ui_recipient_format    group    phone_group    table_delete 
   iojuggler    .name                                         