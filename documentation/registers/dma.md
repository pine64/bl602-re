# Peripheral: dma

- Register base address: 0x4000C000

## Registers

| Register offset | Register size | Field offset | Field size | Name                  | Direction  | Description            |
| --------------- | ------------- | ------------ | ---------- | --------------------- | ---------- | ---------------------- |
| 0x0000          | 32            |              |            | DMA_IntStatus         | read-write | DMA_IntStatus.         |
|                 |               | 0x0000       | 8          | IntStatus             |            |                        |
| 0x0004          | 32            |              |            | DMA_IntTCStatus       | read-write | DMA_IntTCStatus.       |
|                 |               | 0x0000       | 8          | IntTCStatus           |            |                        |
| 0x0008          | 32            |              |            | DMA_IntTCClear        | read-write | DMA_IntTCClear.        |
|                 |               | 0x0000       | 8          | IntTCClear            |            |                        |
| 0x000C          | 32            |              |            | DMA_IntErrorStatus    | read-write | DMA_IntErrorStatus.    |
|                 |               | 0x0000       | 8          | IntErrorStatus        |            |                        |
| 0x0010          | 32            |              |            | DMA_IntErrClr         | read-write | DMA_IntErrClr.         |
|                 |               | 0x0000       | 8          | IntErrClr             |            |                        |
| 0x0014          | 32            |              |            | DMA_RawIntTCStatus    | read-write | DMA_RawIntTCStatus.    |
|                 |               | 0x0000       | 8          | RawIntTCStatus        |            |                        |
| 0x0018          | 32            |              |            | DMA_RawIntErrorStatus | read-write | DMA_RawIntErrorStatus. |
|                 |               | 0x0000       | 8          | RawIntErrorStatus     |            |                        |
| 0x001C          | 32            |              |            | DMA_EnbldChns         | read-write | DMA_EnbldChns.         |
|                 |               | 0x0000       | 8          | EnabledChannels       |            |                        |
| 0x0020          | 32            |              |            | DMA_SoftBReq          | read-write | DMA_SoftBReq.          |
|                 |               | 0x0000       | 32         | SoftBReq              |            |                        |
| 0x0024          | 32            |              |            | DMA_SoftSReq          | read-write | DMA_SoftSReq.          |
|                 |               | 0x0000       | 32         | SoftSReq              |            |                        |
| 0x0028          | 32            |              |            | DMA_SoftLBReq         | read-write | DMA_SoftLBReq.         |
|                 |               | 0x0000       | 32         | SoftLBReq             |            |                        |
| 0x002C          | 32            |              |            | DMA_SoftLSReq         | read-write | DMA_SoftLSReq.         |
|                 |               | 0x0000       | 32         | SoftLSReq             |            |                        |
| 0x0030          | 32            |              |            | DMA_Top_Config        | read-write | DMA_Top_Config.        |
|                 |               | 0x0000       | 1          | E                     |            |                        |
|                 |               | 0x0001       | 1          | M                     |            |                        |
| 0x0034          | 32            |              |            | DMA_Sync              | read-write | DMA_Sync.              |
|                 |               | 0x0000       | 32         | DMA_Sync              |            |                        |
| 0x0100          | 32            |              |            | DMA_C0SrcAddr         | read-write | DMA_C0SrcAddr.         |
|                 |               | 0x0000       | 32         | SrcAddr               |            |                        |
| 0x0104          | 32            |              |            | DMA_C0DstAddr         | read-write | DMA_C0DstAddr.         |
|                 |               | 0x0000       | 32         | DstAddr               |            |                        |
| 0x0108          | 32            |              |            | DMA_C0LLI             | read-write | DMA_C0LLI.             |
|                 |               | 0x0000       | 32         | LLI                   |            |                        |
| 0x010C          | 32            |              |            | DMA_C0Control         | read-write | DMA_C0Control.         |
|                 |               | 0x0000       | 12         | TransferSize          |            |                        |
|                 |               | 0x000C       | 3          | SBSize                |            |                        |
|                 |               | 0x000F       | 3          | DBSize                |            |                        |
|                 |               | 0x0012       | 3          | SWidth                |            |                        |
|                 |               | 0x0015       | 3          | DWidth                |            |                        |
|                 |               | 0x0018       | 1          | SLargerD              |            |                        |
|                 |               | 0x001A       | 1          | SI                    |            |                        |
|                 |               | 0x001B       | 1          | DI                    |            |                        |
|                 |               | 0x001C       | 3          | Prot                  |            |                        |
|                 |               | 0x001F       | 1          | I                     |            |                        |
| 0x0110          | 32            |              |            | DMA_C0Config          | read-write | DMA_C0Config.          |
|                 |               | 0x0000       | 1          | E                     |            |                        |
|                 |               | 0x0001       | 5          | SrcPeripheral         |            |                        |
|                 |               | 0x0006       | 5          | DstPeripheral         |            |                        |
|                 |               | 0x000B       | 3          | FlowCntrl             |            |                        |
|                 |               | 0x000E       | 1          | IE                    |            |                        |
|                 |               | 0x000F       | 1          | ITC                   |            |                        |
|                 |               | 0x0010       | 1          | L                     |            |                        |
|                 |               | 0x0011       | 1          | A                     |            |                        |
|                 |               | 0x0012       | 1          | H                     |            |                        |
|                 |               | 0x0014       | 10         | LLICounter            |            |                        |
| 0x0200          | 32            |              |            | DMA_C1SrcAddr         | read-write | DMA_C1SrcAddr.         |
|                 |               | 0x0000       | 32         | SrcAddr               |            |                        |
| 0x0204          | 32            |              |            | DMA_C1DstAddr         | read-write | DMA_C1DstAddr.         |
|                 |               | 0x0000       | 32         | DstAddr               |            |                        |
| 0x0208          | 32            |              |            | DMA_C1LLI             | read-write | DMA_C1LLI.             |
|                 |               | 0x0002       | 30         | LLI                   |            |                        |
| 0x020C          | 32            |              |            | DMA_C1Control         | read-write | DMA_C1Control.         |
|                 |               | 0x0000       | 12         | TransferSize          |            |                        |
|                 |               | 0x000C       | 3          | SBSize                |            |                        |
|                 |               | 0x000F       | 3          | DBSize                |            |                        |
|                 |               | 0x0012       | 3          | SWidth                |            |                        |
|                 |               | 0x0015       | 3          | DWidth                |            |                        |
|                 |               | 0x001A       | 1          | SI                    |            |                        |
|                 |               | 0x001B       | 1          | DI                    |            |                        |
|                 |               | 0x001C       | 3          | Prot                  |            |                        |
|                 |               | 0x001F       | 1          | I                     |            |                        |
| 0x0210          | 32            |              |            | DMA_C1Config          | read-write | DMA_C1Config.          |
|                 |               | 0x0000       | 1          | E                     |            |                        |
|                 |               | 0x0001       | 5          | SrcPeripheral         |            |                        |
|                 |               | 0x0006       | 5          | DstPeripheral         |            |                        |
|                 |               | 0x000B       | 3          | FlowCntrl             |            |                        |
|                 |               | 0x000E       | 1          | IE                    |            |                        |
|                 |               | 0x000F       | 1          | ITC                   |            |                        |
|                 |               | 0x0010       | 1          | L                     |            |                        |
|                 |               | 0x0011       | 1          | A                     |            |                        |
|                 |               | 0x0012       | 1          | H                     |            |                        |
| 0x0300          | 32            |              |            | DMA_C2SrcAddr         | read-write | DMA_C2SrcAddr.         |
|                 |               | 0x0000       | 32         | SrcAddr               |            |                        |
| 0x0304          | 32            |              |            | DMA_C2DstAddr         | read-write | DMA_C2DstAddr.         |
|                 |               | 0x0000       | 32         | DstAddr               |            |                        |
| 0x0308          | 32            |              |            | DMA_C2LLI             | read-write | DMA_C2LLI.             |
|                 |               | 0x0002       | 30         | LLI                   |            |                        |
| 0x030C          | 32            |              |            | DMA_C2Control         | read-write | DMA_C2Control.         |
|                 |               | 0x0000       | 12         | TransferSize          |            |                        |
|                 |               | 0x000C       | 3          | SBSize                |            |                        |
|                 |               | 0x000F       | 3          | DBSize                |            |                        |
|                 |               | 0x0012       | 3          | SWidth                |            |                        |
|                 |               | 0x0015       | 3          | DWidth                |            |                        |
|                 |               | 0x001A       | 1          | SI                    |            |                        |
|                 |               | 0x001B       | 1          | DI                    |            |                        |
|                 |               | 0x001C       | 3          | Prot                  |            |                        |
|                 |               | 0x001F       | 1          | I                     |            |                        |
| 0x0310          | 32            |              |            | DMA_C2Config          | read-write | DMA_C2Config.          |
|                 |               | 0x0000       | 1          | E                     |            |                        |
|                 |               | 0x0001       | 5          | SrcPeripheral         |            |                        |
|                 |               | 0x0006       | 5          | DstPeripheral         |            |                        |
|                 |               | 0x000B       | 3          | FlowCntrl             |            |                        |
|                 |               | 0x000E       | 1          | IE                    |            |                        |
|                 |               | 0x000F       | 1          | ITC                   |            |                        |
|                 |               | 0x0010       | 1          | L                     |            |                        |
|                 |               | 0x0011       | 1          | A                     |            |                        |
|                 |               | 0x0012       | 1          | H                     |            |                        |
| 0x0400          | 32            |              |            | DMA_C3SrcAddr         | read-write | DMA_C3SrcAddr.         |
|                 |               | 0x0000       | 32         | SrcAddr               |            |                        |
| 0x0404          | 32            |              |            | DMA_C3DstAddr         | read-write | DMA_C3DstAddr.         |
|                 |               | 0x0000       | 32         | DstAddr               |            |                        |
| 0x0408          | 32            |              |            | DMA_C3LLI             | read-write | DMA_C3LLI.             |
|                 |               | 0x0002       | 30         | LLI                   |            |                        |
| 0x040C          | 32            |              |            | DMA_C3Control         | read-write | DMA_C3Control.         |
|                 |               | 0x0000       | 12         | TransferSize          |            |                        |
|                 |               | 0x000C       | 3          | SBSize                |            |                        |
|                 |               | 0x000F       | 3          | DBSize                |            |                        |
|                 |               | 0x0012       | 3          | SWidth                |            |                        |
|                 |               | 0x0015       | 3          | DWidth                |            |                        |
|                 |               | 0x001A       | 1          | SI                    |            |                        |
|                 |               | 0x001B       | 1          | DI                    |            |                        |
|                 |               | 0x001C       | 3          | Prot                  |            |                        |
|                 |               | 0x001F       | 1          | I                     |            |                        |
| 0x0410          | 32            |              |            | DMA_C3Config          | read-write | DMA_C3Config.          |
|                 |               | 0x0000       | 1          | E                     |            |                        |
|                 |               | 0x0001       | 5          | SrcPeripheral         |            |                        |
|                 |               | 0x0006       | 5          | DstPeripheral         |            |                        |
|                 |               | 0x000B       | 3          | FlowCntrl             |            |                        |
|                 |               | 0x000E       | 1          | IE                    |            |                        |
|                 |               | 0x000F       | 1          | ITC                   |            |                        |
|                 |               | 0x0010       | 1          | L                     |            |                        |
|                 |               | 0x0011       | 1          | A                     |            |                        |
|                 |               | 0x0012       | 1          | H                     |            |                        |
