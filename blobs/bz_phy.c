void bz_phy_reset(void)

{
  uint uVar1;
  
  uVar1 = read_volatile_4(0x40002808);
  write_volatile_4(0x40002808,uVar1 & 0xff7fffff | 0x800000);
  uVar1 = read_volatile_4(0x40002808);
  write_volatile_4(0x40002808,uVar1 & 0xffffff | 0x8000000);
  uVar1 = read_volatile_4(0x4000280c);
  write_volatile_4(0x4000280c,uVar1 & 0xff7fffff | 0x800000);
  uVar1 = read_volatile_4(0x4000280c);
  write_volatile_4(0x4000280c,uVar1 & 0xffffff | 0x4000000);
  uVar1 = read_volatile_4(0x4000280c);
  write_volatile_4(0x4000280c,uVar1 & 0xffffff00);
  uVar1 = read_volatile_4(0x40002854);
  write_volatile_4(0x40002854,uVar1 & 0xffff00ff | 0x2000);
  uVar1 = read_volatile_4(0x40002854);
  write_volatile_4(0x40002854,uVar1 & 0xffffff | 0x1e000000);
  uVar1 = read_volatile_4(0x40002854);
  write_volatile_4(0x40002854,uVar1 & 0xff00ffff | 0xa0000);
  uVar1 = read_volatile_4(0x40002854);
  write_volatile_4(0x40002854,uVar1 & 0xffffff00 | 0x1e);
  uVar1 = read_volatile_4(0x40002810);
  write_volatile_4(0x40002810,uVar1 & 0xfffffffe);
  uVar1 = read_volatile_4(0x40002810);
  write_volatile_4(0x40002810,uVar1 | 0x2);
  uVar1 = read_volatile_4(0x40002cac);
  write_volatile_4(0x40002cac,uVar1 & 0xffffffe0 | 0x4);
  return;
}