# Peripheral: cks

- Register base address: 0x4000A000

## Registers

| Register offset | Register size | Field offset | Field size | Name             | Direction  | Description |
| --------------- | ------------- | ------------ | ---------- | ---------------- | ---------- | ----------- |
| 0x0000          | 32            |              |            | cks_config       | read-write | cks_config. |
|                 |               | 0x0000       | 1          | cr_cks_clr       |            |             |
|                 |               | 0x0001       | 1          | cr_cks_byte_swap |            |             |
| 0x0004          | 32            |              |            | data_in          | read-write | data_in.    |
|                 |               | 0x0000       | 8          | data_in          |            |             |
| 0x0008          | 32            |              |            | cks_out          | read-write | cks_out.    |
|                 |               | 0x0000       | 16         | cks_out          |            |             |
