/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_u_test.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:53:10 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 09:54:41 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_putnbr_u_test(void)
{
	int		fd;
	int		fails;

	fd = close_stdout();
	fails = g_fails;
	if (fd < 0)
		return (-1);
	ASSERT(1 == ft_putnbr_u(0));
	ASSERT(1 == ft_putnbr_u(7));
	ASSERT(2 == ft_putnbr_u(42));
	ASSERT(10 == ft_putnbr_u(2147483647));
	ASSERT(10 == ft_putnbr_u(3000000000));
	ASSERT(10 == ft_putnbr_u(4294967295));
	reopen_stdout(fd);
	return (g_fails - fails);
}
