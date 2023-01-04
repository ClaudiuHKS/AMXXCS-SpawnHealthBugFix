#include < amxmodx >
#include < fakemeta >
#include < hamsandwich >

/* ** Client Health Offset */
#define pData_ClientHealth 359

public plugin_init( )
{
	register_plugin( "Spawn Health Bug Fix", "2.0", "claudiuhks" );

	/* ** When a player is spawned */
	RegisterHam( Ham_Spawn, "player", "OnPlayerSpawn_Post", 1 /* ** This is a post forward */ );
}

public OnPlayerSpawn_Post( Client )
{
	if( is_user_alive( Client ) /* ** And also, connected */ )
		set_pdata_int( Client, pData_ClientHealth, -99 /* ** A negative value */ );
}
