/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   util.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: anpicard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/14 15:49:05 by anpicard          #+#    #+#             */
/*   Updated: 2024/11/14 17:31:44 by anpicard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putchar(char c, int fd)
{
    ft_putchar_fd(c, fd);
    return (1);
}

int	ft_putstr(char *str, int fd)
{
    if (!str)
    {
        ft_putstr("(null)", 1);
        return (6);
    }
    ft_putstr_fd(str, fd);
    return (ft_strlen(str));
}