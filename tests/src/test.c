/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 08:52:26 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/29 16:51:32 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"
#include "list_test.h"
#include <stdio.h>

static int	print_function_name(char const *s)
{
	PRINT("\033[33mTest ");
	PRINT((char*)s);
	PRINT("\033[0m ");
	return (0);
}

static int	init_tests(void)
{
	PRINTL("\033[32m===============\033[0m");
	PRINTL("\033[32m Test libftASM\033[0m");
	PRINTL("\033[32m===============\033[0m");
	g_asserts = 0;
	g_fails = 0;
	return (0);
}

static int	print_result(int func)
{
	PRINTL("\033[32m===============\033[0m");
	PRINTL("\033[32m    RESULT\033[0m");
	PRINTL("\033[32m===============\033[0m");
	printf("Fonction tested: %d\ntotal assertions: %d\nfailed assertions: %d\n", func, g_asserts, g_fails);
	return (g_fails);
}

int			main(void)
{
	int		i;
	int		ret;

	i = 0;
	if (init_tests())
		return (-1);
	while (g_tests[i].name)
	{
		if (print_function_name(g_tests[i].name))
			return (-1);
		if ((ret = g_tests[i].func()))
		{
			PRINTL("[\033[31mKO\033[0m]");
			if (ret == -1)
				return (-1);
		}
		else
			PRINTL("[\033[32mOK\033[0m]");
		i++;
	}
	if (print_result(i))
		return (g_fails);
	return (0);
}
