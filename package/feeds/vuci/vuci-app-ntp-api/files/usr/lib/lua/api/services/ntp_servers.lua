LuaQ               "      A@   E     \    Α@   Λΐΐ JA  IAAάΑΑ Α  d  Ι@KBΑΑ \€A  I€     Ι€Α  Ι€    Ιή          require 
   vuci.util    api/ConfigService    new    increment_name    section 
   ntpclient 
   ntpserver    PUT_validate_section_hook    option 	   hostname 	   validate    DELETE_before_commit_hook    POST_validate_hook    DELETE_validate_hook        
           K @ Ζ@@ @ AΑ  \Z   @  Α @@A  ΑAA Α  @  	      get_abs_value    config    sid 	   hostname     
   add_error 
   STD_CODES    INVALID_OPT    Option can not be empty                                 @ @@              dt    host                        5    =   F @ K@ΐ Α  Α  \ F Α @A A @ Α Λ@A FA  Α άAB    
 FB "A A  @ ΑB C@CΐW@Γ@A  ΛΑC A   δ             άAΓΛAD E FΒΔ ΑB έή  ΛAD E FΒΔ ΑB έή  c          uci    get_all 
   ntpclient    @ntpclient[0]    .name    get_abs_value    config    enabled    sync_enabled    _single    sid 
   arguments    data    1 	       table_foreach 
   ntpserver    add_critical_error 
   STD_CODES    INVALID_OPT R   Service does not work without enabled 'sync_enabled' or at least one 'ntpserver'.    Validation L   Service does not work without at least one 'ntpserver' instance configured.           %       D   F ΐ   Ζ@@ \Z@   D  Lΐ H  Fΐ@ Z@   D Lΐ H      	   contains    .name 	   	   hostname                                 6   >        A   @@   AΑ  €     @@  @A  ΑAA @   	   	       table_foreach 
   ntpclient 
   ntpserver 	      add_critical_error 
   STD_CODES    UCI_CREATE_ERROR ;   Can't create more instances. Only 30 instances are allowed        8   :       D   L ΐ H        	                                   @   P    2   F @ K@ΐ Α  Α  \ F Α @A A @ Α Λ@A FA  Α άAB    
 FB "A A  @ ΑB C@C W@ΓA ΑC   A €          AΓAD  ΒDA B   c          uci    get_all 
   ntpclient    @ntpclient[0]    .name    get_abs_value    config    enabled    sync_enabled    _single    sid 
   arguments    data    1 	       table_foreach 
   ntpserver    add_critical_error 
   STD_CODES    INVALID_OPT R   Service does not work without enabled 'sync_enabled' or at least one 'ntpserver'.    Validation        G   K       D   Z   @D  F ΐ    Ζ@@ \Z@   D  Lΐ H       	   contains    .name 	                                           