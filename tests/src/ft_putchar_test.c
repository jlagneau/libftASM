/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putchar_test.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/29 23:52:34 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 09:58:51 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_putchar_test(void)
{
	int		fd;
	int		fails;

	fd = close_stdout();
	fails = g_fails;
	ASSERT(1 == ft_putchar('*'));
	ASSERT(1 == ft_putchar('A'));
	ASSERT(1 == ft_putchar('z'));
	ASSERT(1 == ft_putchar('7'));
	ASSERT(1 == ft_putchar('~'));
	ASSERT(1 == ft_putchar('\n'));
	ASSERT(1 == ft_putchar(' '));
	reopen_stdout(fd);
	return (g_fails - fails);
}
