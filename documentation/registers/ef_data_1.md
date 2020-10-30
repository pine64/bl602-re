# Peripheral: ef_data_1

- Register base address: 0x40007000

## Registers

| Register offset | Register size | Field offset | Field size | Name               | Direction  | Description         |
| --------------- | ------------- | ------------ | ---------- | ------------------ | ---------- | ------------------- |
| 0x0080          | 32            |              |            | reg_key_slot_6_w0  | read-write | reg_key_slot_6_w0.  |
|                 |               | 0x0000       | 32         | reg_key_slot_6_w0  |            |                     |
| 0x0084          | 32            |              |            | reg_key_slot_6_w1  | read-write | reg_key_slot_6_w1.  |
|                 |               | 0x0000       | 32         | reg_key_slot_6_w1  |            |                     |
| 0x0088          | 32            |              |            | reg_key_slot_6_w2  | read-write | reg_key_slot_6_w2.  |
|                 |               | 0x0000       | 32         | reg_key_slot_6_w2  |            |                     |
| 0x008C          | 32            |              |            | reg_key_slot_6_w3  | read-write | reg_key_slot_6_w3.  |
|                 |               | 0x0000       | 32         | reg_key_slot_6_w3  |            |                     |
| 0x0090          | 32            |              |            | reg_key_slot_7_w0  | read-write | reg_key_slot_7_w0.  |
|                 |               | 0x0000       | 32         | reg_key_slot_7_w0  |            |                     |
| 0x0094          | 32            |              |            | reg_key_slot_7_w1  | read-write | reg_key_slot_7_w1.  |
|                 |               | 0x0000       | 32         | reg_key_slot_7_w1  |            |                     |
| 0x0098          | 32            |              |            | reg_key_slot_7_w2  | read-write | reg_key_slot_7_w2.  |
|                 |               | 0x0000       | 32         | reg_key_slot_7_w2  |            |                     |
| 0x009C          | 32            |              |            | reg_key_slot_7_w3  | read-write | reg_key_slot_7_w3.  |
|                 |               | 0x0000       | 32         | reg_key_slot_7_w3  |            |                     |
| 0x00A0          | 32            |              |            | reg_key_slot_8_w0  | read-write | reg_key_slot_8_w0.  |
|                 |               | 0x0000       | 32         | reg_key_slot_8_w0  |            |                     |
| 0x00A4          | 32            |              |            | reg_key_slot_8_w1  | read-write | reg_key_slot_8_w1.  |
|                 |               | 0x0000       | 32         | reg_key_slot_8_w1  |            |                     |
| 0x00A8          | 32            |              |            | reg_key_slot_8_w2  | read-write | reg_key_slot_8_w2.  |
|                 |               | 0x0000       | 32         | reg_key_slot_8_w2  |            |                     |
| 0x00AC          | 32            |              |            | reg_key_slot_8_w3  | read-write | reg_key_slot_8_w3.  |
|                 |               | 0x0000       | 32         | reg_key_slot_8_w3  |            |                     |
| 0x00B0          | 32            |              |            | reg_key_slot_9_w0  | read-write | reg_key_slot_9_w0.  |
|                 |               | 0x0000       | 32         | reg_key_slot_9_w0  |            |                     |
| 0x00B4          | 32            |              |            | reg_key_slot_9_w1  | read-write | reg_key_slot_9_w1.  |
|                 |               | 0x0000       | 32         | reg_key_slot_9_w1  |            |                     |
| 0x00B8          | 32            |              |            | reg_key_slot_9_w2  | read-write | reg_key_slot_9_w2.  |
|                 |               | 0x0000       | 32         | reg_key_slot_9_w2  |            |                     |
| 0x00BC          | 32            |              |            | reg_key_slot_9_w3  | read-write | reg_key_slot_9_w3.  |
|                 |               | 0x0000       | 32         | reg_key_slot_9_w3  |            |                     |
| 0x00C0          | 32            |              |            | reg_key_slot_10_w0 | read-write | reg_key_slot_10_w0. |
| 0x00C4          | 32            |              |            | reg_key_slot_10_w1 | read-write | reg_key_slot_10_w1. |
| 0x00C8          | 32            |              |            | reg_key_slot_10_w2 | read-write | reg_key_slot_10_w2. |
| 0x00CC          | 32            |              |            | reg_key_slot_10_w3 | read-write | reg_key_slot_10_w3. |
| 0x00D0          | 32            |              |            | reg_key_slot_11_w0 | read-write | reg_key_slot_11_w0. |
| 0x00D4          | 32            |              |            | reg_key_slot_11_w1 | read-write | reg_key_slot_11_w1. |
| 0x00D8          | 32            |              |            | reg_key_slot_11_w2 | read-write | reg_key_slot_11_w2. |
| 0x00DC          | 32            |              |            | reg_key_slot_11_w3 | read-write | reg_key_slot_11_w3. |
| 0x00E0          | 32            |              |            | reg_data_1_lock    | read-write | reg_data_1_lock.    |
|                 |               | 0x000A       | 1          | wr_lock_key_slot_6 |            |                     |
|                 |               | 0x000B       | 1          | wr_lock_key_slot_7 |            |                     |
|                 |               | 0x000C       | 1          | wr_lock_key_slot_8 |            |                     |
|                 |               | 0x000D       | 1          | wr_lock_key_slot_9 |            |                     |
|                 |               | 0x001A       | 1          | rd_lock_key_slot_6 |            |                     |
|                 |               | 0x001B       | 1          | rd_lock_key_slot_7 |            |                     |
|                 |               | 0x001C       | 1          | rd_lock_key_slot_8 |            |                     |
|                 |               | 0x001D       | 1          | rd_lock_key_slot_9 |            |                     |
