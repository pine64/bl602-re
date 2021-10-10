#include <nohostSecurityParams.h>
#include <wltypes.h>


extern NoHostSecurityParams_t nohostParams;


void set_psk(char *pSsid, UINT8 ssidLen, char *phrase)
{
	__builtin_trap();
}

void set_pmk(char *pSsid, UINT8 ssidLen, char *pPMK)
{
	__builtin_trap();
}

char *get_pmk(char *pSsid, UINT8 ssidLen)
{
	__builtin_trap();
}

void remove_psk(char *pSsid, UINT8 ssidLen)
{
	__builtin_trap();
}
