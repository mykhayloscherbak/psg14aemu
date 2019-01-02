/**
 * @file clock_and_timers.h
 * @e mikl74@yahoo.com
 * @version 1.00
 * @a Mykhaylo Shcherbak
 * @brief Contains clocks and timer functions prototypes
 */
#ifndef SOURCES_HAL_INCLUDE_CLOCK_AND_TIMERS_H_
#define SOURCES_HAL_INCLUDE_CLOCK_AND_TIMERS_H_

#define SYSTICK_FREQ 1000
#define CORE_FREQ 8000000

void Clock_HSI_Init(void);
void Systick_Init(void);
void ResetTimer(uint32_t *Timer);
uint8_t IsExpiredTimer(uint32_t *Timer, uint32_t Timeout);
void Reset_Main_Counter(void);

#endif /* SOURCES_HAL_INCLUDE_CLOCK_AND_TIMERS_H_ */
