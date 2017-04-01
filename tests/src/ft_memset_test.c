/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:35:55 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 08:14:47 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int		ft_memset_test(void)
{
	int		fails;
	char	s[7];

	fails = g_fails;
	ft_bzero(s, 7);
	ASSERT(0 == ft_memcmp("ffffff", ft_memset(s, 'f', 6), 7));
	ASSERT(0 == ft_memcmp("eeeeef", ft_memset(s, 'e', 5), 7));
	ASSERT(0 == ft_memcmp("ddddef", ft_memset(s, 'd', 4), 7));
	ASSERT(0 == ft_memcmp("cccdef", ft_memset(s, 'c', 3), 7));
	ASSERT(0 == ft_memcmp("bbcdef", ft_memset(s, 'b', 2), 7));
	ASSERT(0 == ft_memcmp("abcdef", ft_memset(s, 'a', 1), 7));
	ASSERT(0 == ft_memcmp("abcdef", ft_memset(s, 'z', 0), 7));
	return (g_fails - fails);
}
