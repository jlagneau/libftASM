/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_puts_test.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 09:15:52 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/29 16:40:04 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_puts_test(void)
{
	int		fd;
	int		fails;

	fd = close_stdout();
	fails = g_fails;
	if (fd < 0)
		return (-1);
	ASSERT(0 == ft_puts(0))
	ASSERT(1 == ft_puts(""))
	ASSERT(15 == ft_puts("Hello, World !"))
	reopen_stdout(fd);
	return (g_fails - fails);
}
