/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putendl_test.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 09:15:18 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/22 16:29:36 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int		ft_putendl_test(void)
{
	int		fd;

	fd = close_stdout();
	if (fd < 0)
		return (-1);
	if (1 != ft_putendl(0))
		return (1);
	else if (1 != ft_putendl(""))
		return (2);
	else if (15 != ft_putendl("Hello, World !"))
		return (3);
	reopen_stdout(fd);
	return (0);
}
