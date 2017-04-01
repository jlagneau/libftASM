/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isascii_test.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:32:12 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 01:17:35 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_isascii_test(void)
{
	int		fails;

	fails = g_fails;
	ASSERT(1 == ft_isascii('0'));
	ASSERT(1 == ft_isascii('9'));
	ASSERT(1 == ft_isascii('5'));
	ASSERT(1 == ft_isascii('!'));
	ASSERT(1 == ft_isascii('*'));
	ASSERT(1 == ft_isascii('\n'));
	ASSERT(0 == ft_isascii(-1));
	ASSERT(0 == ft_isascii(-42));
	ASSERT(0 == ft_isascii(128));
	ASSERT(0 == ft_isascii(2147483647));
	return (g_fails - fails);
}
