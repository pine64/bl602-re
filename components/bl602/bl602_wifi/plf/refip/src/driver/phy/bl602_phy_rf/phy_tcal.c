void phy_tcal_callback(int16_t temperature);
void phy_tcal_handle(void);
void phy_tcal_rxgain(int16_t curr_temperature);
void phy_tcal_rxiq(int16_t curr_temperature);
void phy_tcal_stop(void);
void phy_tcal_txiq(int16_t curr_temperature);
void phy_tcal_txpwr(int16_t curr_temperature);
typedef struct tcal_tag tcal_tag, *tcal_tag;

struct tcal_tag {
    int16_t prev_temperature;
    undefined field_0x2;
    undefined field_0x3;
    uint32_t last_action_time[4];
    uint32_t last_action_temperature[4];
    int32_t last_action_out[4];
    _Bool enabled;
    undefined field_0x35;
    undefined field_0x36;
    undefined field_0x37;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file phy_tcal.c
* Source file for BL602
*/
#include "phy_tcal.h"


struct tcal_tag {
    int16_t prev_temperature;
 // +0
    uint32_t last_action_time[4];
 // +4
    uint32_t last_action_temperature[4];
 // +20
    int32_t last_action_out[4];
 // +36
    bool enabled;
 // +52
};

static struct tcal_tag tcal_env;

void phy_tcal_stop(void);
void phy_tcal_handle(void);
void phy_tcal_callback(int16_t temperature);
void phy_tcal_txpwr(int16_t curr_temperature);




/** phy_tcal_stop
 */
void phy_tcal_stop(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** phy_tcal_handle
 */
void phy_tcal_handle(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** phy_tcal_callback
 */
void phy_tcal_callback(int16_t temperature)
{
	ASSER_ERR(FALSE);
	return;
}

/** phy_tcal_txpwr
 */
void phy_tcal_txpwr(int16_t curr_temperature)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
