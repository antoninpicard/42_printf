/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: anpicard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/14 10:00:11 by anpicard          #+#    #+#             */
/*   Updated: 2024/11/14 17:31:16 by anpicard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int    ft_printf(const char *format, ...)
{
    va_list    args;
    int        printed_chars;

    printed_chars = 0;
    va_start(args, format);
    while (*format)
    {
        if (*format == '%' && *(++format))
        {
            if (*format == 'c')
                printed_chars += ft_putchar(va_arg(args, int), 1);
            if (*format == 's')
                printed_chars += ft_putstr(va_arg(args, char *), 1);
            // if (*format == 'd')
            //     printed_chars += ft_putnbr();
        }
        else
            printed_chars += ft_putchar((char) *format, 1);
        format++;
    }
    va_end(args);
    return (printed_chars);
}
