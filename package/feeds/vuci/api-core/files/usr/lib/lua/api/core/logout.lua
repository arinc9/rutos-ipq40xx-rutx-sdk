LuaQ                     A@   E     \    ÁÀ   Ë Á Ü $     dA     É@d      É@Þ          require 
   vuci.util    api/BaseEndpoint    api.responder    new    initialize_method    logout                  W @ D   F@À KÀ \ KÀÀ Å  Æ@Á AÁ \K Â Á@ \KÂ \@         POST 	   err_resp    new 
   add_error 
   STD_CODES    INCORRECT_REQUEST =   HTTP method not supported for this endpoint, please use POST    Request    code    501    yield                               D    @ \@ K@@ \@         request_method    logout                        %       D   F À @  Á  
A  FA FAÁ	A\@ J  IÀA@  ÂI À  CÊ  É@ÉÀC@         ubus    session    destroy    ubus_rpc_session    user    sid    success    data 	   response    Logout successful 
   coroutine    yield    payload    code    200                             