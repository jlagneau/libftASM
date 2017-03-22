/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_puts_test.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau </var/spool/mail/jlagneau>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 09:15:52 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/22 16:40:21 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int		ft_puts_test(void)
{
	int		fd;

	fd = close_stdout();
	if (fd < 0)
		return (-1);
	if (0 != ft_puts(0))
		return (1);
	else if (1 != ft_puts(""))
		return (2);
	else if (15 != ft_puts("Hello, World !"))
		return (3);
	reopen_stdout(fd);
	return (0);
}
