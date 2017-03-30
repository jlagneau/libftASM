/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_toupper_test.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:38:51 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 01:57:14 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_toupper_test(void)
{
	int		fails;

	fails = g_fails;
	ASSERT('A' == ft_toupper('a'))
	ASSERT('Z' == ft_toupper('z'))
	ASSERT('K' == ft_toupper('k'))
	ASSERT('A' == ft_toupper('A'))
	ASSERT('Z' == ft_toupper('Z'))
	ASSERT('H' == ft_toupper('H'))
	ASSERT('*' == ft_toupper('*'))
	ASSERT('0' == ft_toupper('0'))
	ASSERT('\n' == ft_toupper('\n'))
	return (g_fails - fails);
}
