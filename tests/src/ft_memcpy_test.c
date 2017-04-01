/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:35:32 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 22:38:51 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int		ft_memcpy_test(void)
{
	int		fails;
	char	s[7];

	fails = g_fails;
	ft_bzero(s, 7);
	ASSERT(0 == ft_memcmp("ffffff", ft_memcpy(s, "ffffff", 6), 7));
	ASSERT(0 == ft_memcmp("eeeeef", ft_memcpy(s, "eeeeee", 5), 7));
	ASSERT(0 == ft_memcmp("ddddef", ft_memcpy(s, "dddddd", 4), 7));
	ASSERT(0 == ft_memcmp("cccdef", ft_memcpy(s, "cccccc", 3), 7));
	ASSERT(0 == ft_memcmp("bbcdef", ft_memcpy(s, "bbbbbb", 2), 7));
	ASSERT(0 == ft_memcmp("abcdef", ft_memcpy(s, "aaaaaa", 1), 7));
	ASSERT(0 == ft_memcmp("abcdef", ft_memcpy(s, "zzzzzz", 0), 7));
	return (g_fails - fails);
}
