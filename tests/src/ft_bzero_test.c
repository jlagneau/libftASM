/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_bzero_test.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:26:02 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 08:31:13 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_bzero_test(void)
{
	int		fails;
	char	s[7];

	fails = g_fails;
	ft_bzero(s, 7);
	(void)ft_memset(s, 'a', 6);
	ft_bzero(s, 0);
	ASSERT(0 == ft_memcmp("aaaaaa", s, 7));
	ft_bzero(s, 1);
	ASSERT(0 == ft_memcmp("\0aaaaa", s, 7));
	ft_bzero(s, 2);
	ASSERT(0 == ft_memcmp("\0\0aaaa", s, 7));
	ft_bzero(s, 3);
	ASSERT(0 == ft_memcmp("\0\0\0aaa", s, 7));
	ft_bzero(s, 4);
	ASSERT(0 == ft_memcmp("\0\0\0\0aa", s, 7));
	ft_bzero(s, 5);
	ASSERT(0 == ft_memcmp("\0\0\0\0\0a", s, 7));
	ft_bzero(s, 6);
	ASSERT(0 == ft_memcmp("\0\0\0\0\0\0", s, 7));
	return (g_fails - fails);
}
