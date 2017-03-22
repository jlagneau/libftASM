/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau </var/spool/mail/jlagneau>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 08:52:26 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/22 15:45:15 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"
#include "list_test.h"

static int	print_function_name(char const *s)
{
	PRINT("\033[33mTest ");
	PRINT((char*)s);
	PRINT("\033[0m ");
	return (0);
}

static int	print_header(void)
{
	PRINTL("\033[32m===============\033[0m");
	PRINTL("\033[32m Test libftASM\033[0m");
	PRINTL("\033[32m===============\033[0m");
	return (0);
}

int			main(void)
{
	int		i;
	int		ret;

	i = 0;
	if (print_header())
		return (1);
	while (tests[i].name)
	{
		if (print_function_name(tests[i].name))
			return (1);
		if ((ret = tests[i].func()))
		{
			PRINTL("[\033[31mKO\033[0m]");
			return (ret);
		}
		else
			PRINTL("[\033[32mOK\033[0m]");
		i++;
	}
	return (0);
}
