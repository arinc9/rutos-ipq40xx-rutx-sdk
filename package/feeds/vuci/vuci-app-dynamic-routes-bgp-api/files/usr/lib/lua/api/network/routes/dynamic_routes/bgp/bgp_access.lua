LuaQ               ,      A@   J@  Iΐ@€   Λ A @ ά  @ Ι ΑΑ Α  KABΑ \€A  IAB δ  ΑΛABAB ά$Β  ΙBB d 	BKBBΑΒ \€B Iή          require    api/ConfigService    increment_name    new    targets    section    bgp    bgp_access_list    option    enabled 	   validate    target    action    net 
   direction                   J    @ A  A  €     @ @ A  AΑ  €A     @^          table_foreach    bgp 	   bgp_peer    bgp_peer_group        	          E   F@ΐ    Ζ@ \@        table    insert    .name                               E   F@ΐ    Ζ@ \@        table    insert    .name                                             @ @@              dt    is_bool                        !         @ @@  F@              dt    check_array    targets                     $   &     
    @ @@  J   ΑΑ  bA              dt    check_array    permit    deny                     )   ,         @ @@  A   @  ΐ @ ΐ@  @  @ @  A     @        Α@          dt    fieldvalidation    any    cidr4    cidr6 6   IPv4, IPv6 address with netmask or "any" is accepted.                     /   1     
    @ @@  J   ΑΑ  bA              dt    check_array    in    out                             