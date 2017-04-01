/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcmp_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:13:47 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 07:15:54 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_memcmp_test(void)
{
	int		fails;

	fails = g_fails;
	ASSERT(0 == ft_memcmp("aaa", "aaa", 0));
	ASSERT(0 == ft_memcmp("aaa", "aaa", 3));
	ASSERT(0 == ft_memcmp("aa", "b", 0));
	ASSERT(0 == ft_memcmp("bbbc", "bbbCCC", 3));
	ASSERT(32 == ft_memcmp("bbbccc", "bbbCCC", 6));
	ASSERT(-3 == ft_memcmp("abc", "def", 3));
	ASSERT(3 == ft_memcmp("def", "abc", 3));
	ASSERT(42 == ft_memcmp("~kkkkk", "Tkk", 1));
	return (g_fails - fails);
}
