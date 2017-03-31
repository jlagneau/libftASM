/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putchar_test.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/29 23:52:34 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/30 00:17:10 by jlagneau         ###   ########.fr       */
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
	ASSERT(1 == ft_putchar('*'))
	ASSERT(1 == ft_putchar('A'))
	reopen_stdout(fd);
	return (g_fails - fails);
}
