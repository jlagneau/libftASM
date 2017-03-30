/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 09:14:42 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/29 16:35:57 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_putstr_test(void)
{
	int		fd;
	int		fails;

	fd = close_stdout();
	fails = g_fails;
	if (fd < 0)
		return (-1);
	ASSERT(0 == ft_putstr(0))
	ASSERT(0 == ft_putstr(""))
	ASSERT(14 == ft_putstr("Hello, World !"))
	reopen_stdout(fd);
	return (g_fails - fails);
}
