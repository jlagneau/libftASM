/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 09:14:42 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/22 16:55:31 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int		ft_putstr_test(void)
{
	int		fd;
	int		ret;

	fd = close_stdout();
	if (fd < 0)
		return (-1);
	if (0 != ft_putstr(0))
		return (1);
	else if (0 != (ret = ft_putstr("")))
		return (ret);
	else if (14 != ft_putstr("Hello, World !"))
		return (3);
	reopen_stdout(fd);
	return (0);
}
