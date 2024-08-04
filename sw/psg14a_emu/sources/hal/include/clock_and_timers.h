/**
 * @file clock_and_timers.h
 * @e mikl74@yahoo.com
 * @version 1.10
 * @a Mykhaylo Shcherbak
 * @brief Contains clocks and timer functions prototypes
 */
#ifndef SOURCES_HAL_INCLUDE_CLOCK_AND_TIMERS_H_
#define SOURCES_HAL_INCLUDE_CLOCK_AND_TIMERS_H_

#define SYSTICK_FREQ 1000
#define CORE_FREQ 8000000

typedef void (*Systick_Callback_t)(void);

void Clock_HSI_Init(void);
void Systick_Init(const Systick_Callback_t Systick_Callback);
void ResetTimer(uint32_t *const Timer);
uint8_t IsExpiredTimer(uint32_t * const Timer, const uint32_t Timeout);
void Reset_Main_Counter(void);
uint32_t ReadTimer(uint32_t * const Timer);

#endif /* SOURCES_HAL_INCLUDE_CLOCK_AND_TIMERS_H_ */
