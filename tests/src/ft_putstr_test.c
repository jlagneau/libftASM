/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 09:14:42 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/22 16:23:43 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int		ft_putstr_test(void)
{
	int		fd;

	fd = close_stdout();
	if (fd < 0)
		return (-1);
	if (0 != ft_putstr(0))
		return (1);
	else if (0 != ft_putstr(""))
		return (2);
	else if (14 != ft_putstr("Hello, World !"))
		return (3);
	reopen_stdout(fd);
	return (0);
}
