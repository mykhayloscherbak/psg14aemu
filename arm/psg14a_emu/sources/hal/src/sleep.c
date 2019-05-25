#include "gpio_exti.h"
#include "stm32f0xx.h"
#include "sleep.h"

void Sleep_on(void)
{
	Gpio_Reset_all_Outs();
	Exti_Clear_Pending();
	SCB->SCR |= SCB_SCR_SEVONPEND_Msk  | SCB_SCR_SLEEPDEEP_Msk ;
	SCB->SCR &= ~(SCB_SCR_SLEEPONEXIT_Msk);
	PWR->CR &= ~(PWR_CR_PDDS); /* Stop mode */
	PWR->CR |= PWR_CR_LPDS; /* Regulator off */
	__DSB();
	__WFI();

}
