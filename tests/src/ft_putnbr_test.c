/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:53:10 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/29 16:42:44 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_putnbr_test(void)
{
	int		fd;
	int		fails;

	fd = close_stdout();
	fails = g_fails;
	if (fd < 0)
		return (-1);
	ASSERT(1 == ft_putnbr(0))
	ASSERT(2 == ft_putnbr(-7))
	ASSERT(2 == ft_putnbr(42))
	ASSERT(3 == ft_putnbr(-42))
	ASSERT(10 == ft_putnbr(2147483647))
	ASSERT(11 == ft_putnbr(-2147483648))
	reopen_stdout(fd);
	return (g_fails - fails);
}
