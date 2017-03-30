/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putendl_test.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 09:15:18 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/29 16:39:08 by jlagneau         ###   ########.fr       */
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
	ASSERT(1 == ft_putendl(0))
	ASSERT(1 == ft_putendl(""))
	ASSERT(15 == ft_putendl("Hello, World !"))
	reopen_stdout(fd);
	return (g_fails - fails);
}
