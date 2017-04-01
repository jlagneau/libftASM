/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnew_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/01 01:10:17 by jlagneau          #+#    #+#             */
/*   Updated: 2017/04/01 02:03:35 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <libft.h>
#include "test.h"

int			ft_strnew_test(void)
{
	int		fails;
	char	*s;

	fails = g_fails;
	s = ft_strnew(10);
	ASSERT(0 == ft_strcmp("a", ft_memset(s, 'a', 1)));
	ASSERT(0 == ft_strcmp("bb", ft_memset(s, 'b', 2)));
	ASSERT(0 == ft_strcmp("ccc", ft_memset(s, 'c', 3)));
	ASSERT(0 == ft_strcmp("dddd", ft_memset(s, 'd', 4)));
	ASSERT(0 == ft_strcmp("eeeee", ft_memset(s, 'e', 5)));
	ASSERT(0 == ft_strcmp("ffffff", ft_memset(s, 'f', 6)));
	ASSERT(0 == ft_strcmp("ggggggg", ft_memset(s, 'g', 7)));
	ASSERT(0 == ft_strcmp("hhhhhhhh", ft_memset(s, 'h', 8)));
	ASSERT(0 == ft_strcmp("iiiiiiiii", ft_memset(s, 'i', 9)));
	ASSERT(0 == ft_strcmp("jjjjjjjjjj", ft_memset(s, 'j', 10)));
	free(s);
	return (g_fails - fails);
}
