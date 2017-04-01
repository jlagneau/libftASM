/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_tolower_test.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:38:31 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 02:02:16 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_tolower_test(void)
{
	int		fails;

	fails = g_fails;
	ASSERT('a' == ft_tolower('A'));
	ASSERT('z' == ft_tolower('Z'));
	ASSERT('k' == ft_tolower('K'));
	ASSERT('a' == ft_tolower('a'));
	ASSERT('z' == ft_tolower('z'));
	ASSERT('h' == ft_tolower('h'));
	ASSERT('*' == ft_tolower('*'));
	ASSERT('0' == ft_tolower('0'));
	ASSERT('\n' == ft_tolower('\n'));
	return (g_fails - fails);
}
