/**
* @file bl_passphrase.c
* Source file for BL602
*/
#include "bl_passphrase.h"


void Bl_F(unsigned char *digest, unsigned char *digest1, char *password, unsigned char *ssid, int ssidlength, int iterations, int count, unsigned char *output);
int Bl_PasswordHash(char *password, unsigned char *ssid, int ssidlength, unsigned char *output);
int bl60x_fw_password_hash(char *password, unsigned char *ssid, int ssidlength, unsigned char *output);




/** Bl_F
 */
void Bl_F(unsigned char *digest, unsigned char *digest1, char *password, unsigned char *ssid, int ssidlength, int iterations, int count, unsigned char *output)
{
	ASSER_ERR(FALSE);
	return;
}

/** Bl_PasswordHash
 */
int Bl_PasswordHash(char *password, unsigned char *ssid, int ssidlength, unsigned char *output)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** bl60x_fw_password_hash
 */
int bl60x_fw_password_hash(char *password, unsigned char *ssid, int ssidlength, unsigned char *output)
{
	ASSER_ERR(FALSE);
	return -1;
}
