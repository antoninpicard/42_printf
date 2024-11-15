/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: anpicard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/15 09:22:21 by anpicard          #+#    #+#             */
/*   Updated: 2024/11/15 11:45:43 by anpicard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	main()
{
	char Z = 'Z';
	char *string = "Je suis une string";
	int	nb = 46464648;

	printf(" %p %p ", NULL, NULL);
	ft_printf("\nZ : %c et moi une string : %s et un decimal %d et voici une adress : %p", Z, string, nb, NULL);
}