# Peripheral: tzc_sec

- Register base address: 0x40005000

## Registers

| Register offset | Register size | Field offset | Field size | Name               | Direction  | Description   |
| --------------- | ------------- | ------------ | ---------- | ------------------ | ---------- | ------------- |
| 0x0040          | 32            |              |            | tzc_rom_ctrl       | read-write | tzc_rom_ctrl. |
|                 |               | 0x0000       | 1          | tzc_rom0_r0_id0_en |            |
|                 |               | 0x0001       | 1          | tzc_rom0_r1_id0_en |            |
|                 |               | 0x0002       | 1          | tzc_rom1_r0_id0_en |            |
|                 |               | 0x0003       | 1          | tzc_rom1_r1_id0_en |            |
|                 |               | 0x0008       | 1          | tzc_rom0_r0_id1_en |            |
|                 |               | 0x0009       | 1          | tzc_rom0_r1_id1_en |            |
|                 |               | 0x000A       | 1          | tzc_rom1_r0_id1_en |            |
|                 |               | 0x000B       | 1          | tzc_rom1_r1_id1_en |            |
|                 |               | 0x0010       | 1          | tzc_rom0_r0_en     |            |
|                 |               | 0x0011       | 1          | tzc_rom0_r1_en     |            |
|                 |               | 0x0012       | 1          | tzc_rom1_r0_en     |            |
|                 |               | 0x0013       | 1          | tzc_rom1_r1_en     |            |
|                 |               | 0x0018       | 1          | tzc_rom0_r0_lock   |            |
|                 |               | 0x0019       | 1          | tzc_rom0_r1_lock   |            |
|                 |               | 0x001A       | 1          | tzc_rom1_r0_lock   |            |
|                 |               | 0x001B       | 1          | tzc_rom1_r1_lock   |            |
|                 |               | 0x001C       | 4          | tzc_sboot_done     |            |
| 0x0044          | 32            |              |            | tzc_rom0_r0        | read-write | tzc_rom0_r0.  |
|                 |               | 0x0000       | 16         | tzc_rom0_r0_end    |            |
|                 |               | 0x0010       | 16         | tzc_rom0_r0_start  |            |
| 0x0048          | 32            |              |            | tzc_rom0_r1        | read-write | tzc_rom0_r1.  |
|                 |               | 0x0000       | 16         | tzc_rom0_r1_end    |            |
|                 |               | 0x0010       | 16         | tzc_rom0_r1_start  |            |
| 0x004C          | 32            |              |            | tzc_rom1_r0        | read-write | tzc_rom1_r0.  |
|                 |               | 0x0000       | 16         | tzc_rom1_r0_end    |            |
|                 |               | 0x0010       | 16         | tzc_rom1_r0_start  |            |
| 0x0050          | 32            |              |            | tzc_rom1_r1        | read-write | tzc_rom1_r1.  |
|                 |               | 0x0000       | 16         | tzc_rom1_r1_end    |            |
|                 |               | 0x0010       | 16         | tzc_rom1_r1_start  |            |
