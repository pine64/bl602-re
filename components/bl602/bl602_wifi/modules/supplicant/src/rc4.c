typedef struct rc4_key {
	unsigned char state[256];
	unsigned char x;
	unsigned char y;
} rc4_key;

static rc4_key rc4key;


void prepare_key(unsigned char *key_data_ptr, int key_data_len, rc4_key *key)
{
	__builtin_trap();
}

void rc4(unsigned char *buffer_ptr, int buffer_len, int skip, rc4_key *key)
{
	__builtin_trap();
}

void swap_byte(unsigned char *a, unsigned char *b)
{
	__builtin_trap();
}

void RC4_Encrypt(unsigned char *Encr_Key, unsigned char *IV, short unsigned int iv_length, unsigned char *Data, short unsigned int data_length, short unsigned int skipBytes)
{
	__builtin_trap();
}
