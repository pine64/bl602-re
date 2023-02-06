#include <phy_rf/bl602_rf_calib_data.h>

#if 0
#define RF_CALIB_DATA_ADDR      (0x40020000)

rf_calib_data_tag* rf_calib_data = (rf_calib_data_tag *)RF_CALIB_DATA_ADDR;
#else
static rf_calib_data_tag data = {0};
rf_calib_data_tag* rf_calib_data = &data;
#endif