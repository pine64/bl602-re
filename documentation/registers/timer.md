# Peripheral: timer

- Register base address: 0x4000A500

## Registers

| Register offset | Register size | Field offset | Field size | Name         | Direction  | Description |
| --------------- | ------------- | ------------ | ---------- | ------------ | ---------- | ----------- |
| 0x0000          | 32            |              |            | TCCR         | read-write | TCCR.       |
|                 |               | 0x0002       | 2          | cs_1         |            |
|                 |               | 0x0005       | 2          | cs_2         |            |
|                 |               | 0x0008       | 2          | cs_wdt       |            |
| 0x0010          | 32            |              |            | TMR2_0       | read-write | TMR2_0.     |
|                 |               | 0x0000       | 32         | tmr          |            |
| 0x0014          | 32            |              |            | TMR2_1       | read-write | TMR2_1.     |
|                 |               | 0x0000       | 32         | tmr          |            |
| 0x0018          | 32            |              |            | TMR2_2       | read-write | TMR2_2.     |
|                 |               | 0x0000       | 32         | tmr          |            |
| 0x001C          | 32            |              |            | TMR3_0       | read-write | TMR3_0.     |
|                 |               | 0x0000       | 32         | tmr          |            |
| 0x0020          | 32            |              |            | TMR3_1       | read-write | TMR3_1.     |
|                 |               | 0x0000       | 32         | tmr          |            |
| 0x0024          | 32            |              |            | TMR3_2       | read-write | TMR3_2.     |
|                 |               | 0x0000       | 32         | tmr          |            |
| 0x002C          | 32            |              |            | TCR2         | read-write | TCR2.       |
|                 |               | 0x0000       | 32         | tcr          |            |
| 0x0030          | 32            |              |            | TCR3         | read-write | TCR3.       |
|                 |               | 0x0000       | 32         | tcr3_counter |            |
| 0x0038          | 32            |              |            | TMSR2        | read-write | TMSR2.      |
|                 |               | 0x0000       | 1          | tmsr_0       |            |
|                 |               | 0x0001       | 1          | tmsr_1       |            |
|                 |               | 0x0002       | 1          | tmsr_2       |            |
| 0x003C          | 32            |              |            | TMSR3        | read-write | TMSR3.      |
|                 |               | 0x0000       | 1          | tmsr_0       |            |
|                 |               | 0x0001       | 1          | tmsr_1       |            |
|                 |               | 0x0002       | 1          | tmsr_2       |            |
| 0x0044          | 32            |              |            | TIER2        | read-write | TIER2.      |
|                 |               | 0x0000       | 1          | tier_0       |            |
|                 |               | 0x0001       | 1          | tier_1       |            |
|                 |               | 0x0002       | 1          | tier_2       |            |
| 0x0048          | 32            |              |            | TIER3        | read-write | TIER3.      |
|                 |               | 0x0000       | 1          | tier_0       |            |
|                 |               | 0x0001       | 1          | tier_1       |            |
|                 |               | 0x0002       | 1          | tier_2       |            |
| 0x0050          | 32            |              |            | TPLVR2       | read-write | TPLVR2.     |
|                 |               | 0x0000       | 32         | tplvr        |            |
| 0x0054          | 32            |              |            | TPLVR3       | read-write | TPLVR3.     |
|                 |               | 0x0000       | 32         | tplvr        |            |
| 0x005C          | 32            |              |            | TPLCR2       | read-write | TPLCR2.     |
|                 |               | 0x0000       | 2          | tplcr        |            |
| 0x0060          | 32            |              |            | TPLCR3       | read-write | TPLCR3.     |
|                 |               | 0x0000       | 2          | tplcr        |            |
| 0x0064          | 32            |              |            | WMER         | read-write | WMER.       |
|                 |               | 0x0000       | 1          | we           |            |
|                 |               | 0x0001       | 1          | wrie         |            |
| 0x0068          | 32            |              |            | WMR          | read-write | WMR.        |
|                 |               | 0x0000       | 16         | wmr          |            |
| 0x006C          | 32            |              |            | WVR          | read-write | WVR.        |
|                 |               | 0x0000       | 16         | wvr          |            |
| 0x0070          | 32            |              |            | WSR          | read-write | WSR.        |
|                 |               | 0x0000       | 1          | wts          |            |
| 0x0078          | 32            |              |            | TICR2        | read-write | TICR2.      |
|                 |               | 0x0000       | 1          | tclr_0       |            |
|                 |               | 0x0001       | 1          | tclr_1       |            |
|                 |               | 0x0002       | 1          | tclr_2       |            |
| 0x007C          | 32            |              |            | TICR3        | read-write | TICR3.      |
|                 |               | 0x0000       | 1          | tclr_0       |            |
|                 |               | 0x0001       | 1          | tclr_1       |            |
|                 |               | 0x0002       | 1          | tclr_2       |            |
| 0x0080          | 32            |              |            | WICR         | read-write | WICR.       |
|                 |               | 0x0000       | 1          | wiclr        |            |
| 0x0084          | 32            |              |            | TCER         | read-write | TCER.       |
|                 |               | 0x0001       | 1          | timer2_en    |            |
|                 |               | 0x0002       | 1          | timer3_en    |            |
| 0x0088          | 32            |              |            | TCMR         | read-write | TCMR.       |
|                 |               | 0x0001       | 1          | timer2_mode  |            |
|                 |               | 0x0002       | 1          | timer3_mode  |            |
| 0x0090          | 32            |              |            | TILR2        | read-write | TILR2.      |
|                 |               | 0x0000       | 1          | tilr_0       |            |
|                 |               | 0x0001       | 1          | tilr_1       |            |
|                 |               | 0x0002       | 1          | tilr_2       |            |
| 0x0094          | 32            |              |            | TILR3        | read-write | TILR3.      |
|                 |               | 0x0000       | 1          | tilr_0       |            |
|                 |               | 0x0001       | 1          | tilr_1       |            |
|                 |               | 0x0002       | 1          | tilr_2       |            |
| 0x0098          | 32            |              |            | WCR          | read-write | WCR.        |
|                 |               | 0x0000       | 1          | wcr          |            |
| 0x009C          | 32            |              |            | WFAR         | read-write | WFAR.       |
|                 |               | 0x0000       | 16         | wfar         |            |
| 0x00A0          | 32            |              |            | WSAR         | read-write | WSAR.       |
|                 |               | 0x0000       | 16         | wsar         |            |
| 0x00A8          | 32            |              |            | TCVWR2       | read-write | TCVWR2.     |
|                 |               | 0x0000       | 32         | tcvwr        |            |
| 0x00AC          | 32            |              |            | TCVWR3       | read-write | TCVWR3.     |
|                 |               | 0x0000       | 32         | tcvwr        |            |
| 0x00B4          | 32            |              |            | TCVSYN2      | read-write | TCVSYN2.    |
|                 |               | 0x0000       | 32         | tcvsyn2      |            |
| 0x00B8          | 32            |              |            | TCVSYN3      | read-write | TCVSYN3.    |
|                 |               | 0x0000       | 32         | tcvsyn3      |            |
| 0x00BC          | 32            |              |            | TCDR         | read-write | TCDR.       |
|                 |               | 0x0008       | 8          | tcdr2        |            |
|                 |               | 0x0010       | 8          | tcdr3        |            |
|                 |               | 0x0018       | 8          | wcdr         |            |
