/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: anpicard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/14 10:00:11 by anpicard          #+#    #+#             */
/*   Updated: 2024/11/14 12:02:18 by anpicard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/ft_printf.h"

int	ft_printf(const char *format, ...)
{
	va_list	args;
	int		number;

	va_start(args, format);
	number = va_arg(args, int);
	printf("Nombre : %d\n", number);
	va_end(args);
	return (0);
}

int	main(void)
{
	printf("Test 1 :\n");
	ft_printf("d", 42);
	printf("\nTest 2 :\n");
	ft_printf("d", 123456);
	printf("\nTest 3 :\n");
	ft_printf("d", -987);
	return (0);
}
