/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:53:10 by jlagneau          #+#    #+#             */
/*   Updated: 2017/04/01 18:38:29 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

/*
** FIXME:
**
** signed long long =
** MAX = 2 ^ 63 - 1 = 9223372036854775807
** MIN = -2 ^ 63    = -9223372036854775808
**
** -9223372036854775808 says that it's too large for a signed value so I cannot
** test it other than by puting it into a long long variable, can I?
*/
int			ft_putnbr_test(void)
{
	int		fd;
	int		fails;
	long	test;

	fd = close_stdout();
	fails = g_fails;
	if (fd < 0)
		return (-1);
	ASSERT(1 == ft_putnbr(0));
	ASSERT(1 == ft_putnbr(7));
	ASSERT(2 == ft_putnbr(42));
	ASSERT(10 == ft_putnbr(2147483647));
	ASSERT(2 == ft_putnbr(-1));
	ASSERT(11 == ft_putnbr(-2147483648));
	if (sizeof(long) == 8)
	{
		test = -9223372036854775807;
		ASSERT(10 == ft_putnbr(3000000000));
		ASSERT(10 == ft_putnbr(4294967295));
		ASSERT(19 == ft_putnbr(9223372036854775807));
		ASSERT(20 == ft_putnbr(test));
		test--;
		ASSERT(20 == ft_putnbr(test));
	}
	reopen_stdout(fd);
	return (g_fails - fails);
}
