/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pointer_set.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: anpicard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/15 10:52:27 by anpicard          #+#    #+#             */
/*   Updated: 2024/11/15 11:45:50 by anpicard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

// Function to print a single character and count it
static int ft_putchar_count(char c, int fd)
{
    write(fd, &c, 1);
    return (1);
}

// Function to convert a hexadecimal digit to a character and count it
static int ft_put_hex_digit_count(int digit)
{
    if (digit < 10)
        return ft_putchar_count(digit + '0', 1);
    else
        return ft_putchar_count(digit - 10 + 'a', 1);
}

// Function to print an address in hexadecimal format and count characters
static int ft_put_address_count(unsigned long address)
{
    int count = 0;

    if (address >= 16)
        count += ft_put_address_count(address / 16);
    count += ft_put_hex_digit_count(address % 16);

    return (count);
}

// Function to print the address of a pointer and return the number of characters
int ft_put_pointer(void *ptr)
{
    int count = 0;

	if (!ptr)
	{
		write(1, "(nil)", 5);
		return (5);
	}
    count += write(1, "0x", 2);
    count += ft_put_address_count((unsigned long)ptr);

    return (count);
}
