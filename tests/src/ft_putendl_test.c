/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putendl_test.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 09:15:18 by jlagneau          #+#    #+#             */
/*   Updated: 2017/04/01 04:49:29 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_putendl_test(void)
{
	int		fd;
	int		fails;

	fd = close_stdout();
	fails = g_fails;
	if (fd < 0)
		return (-1);
	ASSERT(1 == ft_putendl(""));
	ASSERT(2 == ft_putendl("\n"));
	ASSERT(15 == ft_putendl("Hello, World !"));
	reopen_stdout(fd);
	return (g_fails - fails);
}
