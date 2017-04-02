/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 08:52:26 by jlagneau          #+#    #+#             */
/*   Updated: 2017/04/02 21:52:43 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

static int	print_help(void)
{
	PRINTL("Usage: ./test [ft_cat [FILENAME]]");
	return (1);
}

int			main(int argc, char *argv[])
{
	int		ret;

	ret = 0;
	if (argc == 1)
		return (init_test());
	else if (argc >= 2 && argc <= 3)
	{
		if (ft_strcmp("ft_cat", argv[1]))
		{
			ret = print_help();
			return (ret);
		}
		if (argc == 2)
			ret = ft_cat_test(0);
		else
			ret = ft_cat_test(argv[2]);
	}
	else
		(void)print_help();
	return (0);
}
