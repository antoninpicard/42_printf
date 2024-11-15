/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: anpicard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/14 10:00:11 by anpicard          #+#    #+#             */
/*   Updated: 2024/11/15 11:25:44 by anpicard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include "../inc/libft/libft.h"

int    ft_printf(const char *format, ...)
{
    va_list		args;
    int			printed_chars;
	void		*tmp;

    printed_chars = 0;
    va_start(args, format);
    while (*format)
    {
        if (*format == '%' && *(++format))
        {
            if (*format == 'c')
                printed_chars += ft_putchar(va_arg(args, int), 1);
            else if (*format == 's')
                printed_chars += ft_putstr(va_arg(args, char *), 1);
            else if (*format == 'd' || *format == 'i')
                printed_chars += ft_putnbr(va_arg(args, int), 1);
			else if (*format == '%')
				printed_chars += ft_putchar('%', 1);
			else if (*format == 'p')
			{
				tmp = va_arg(args, char *);
				printed_chars += ft_put_pointer(&tmp);
			}
        }
        else
            printed_chars += ft_putchar((char) *format, 1);
        format++;
    }
    va_end(args);
    return (printed_chars);
}
