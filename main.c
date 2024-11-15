/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: anpicard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/15 09:22:21 by anpicard          #+#    #+#             */
/*   Updated: 2024/11/15 11:31:39 by anpicard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	main()
{
	char Z = 'Z';
	char *string = "Je suis une string";
	int	nb = 46464648;

	ft_printf("Z : %c et moi une string : %s et un decimal %d et voici une address : %p", Z, string, nb, 1);
}