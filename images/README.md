The files in this directory are unmodified images read from real devices.
Currently, they are

 - **rom.bin**: The entire BL602 ROM (128KB at `0x2100_0000`), read via JTAG
   from a first-run PineCone v1.1 with chip marking BL602L20 / S7GHP2 / 2034-F2.
 - **pinecone-factory-flash.bin**: The entire flash contents (2MB at
   `0x2300_0000`) that the above-mentioned PineCone shipped with from the
   factory, read both via JTAG and via the Eflash_loader protocol. The results
   from both were identical, so only one file is provided.
