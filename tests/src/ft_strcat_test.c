/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcat_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:36:21 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 22:44:12 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int		ft_strcat_test(void)
{
	int		fails;
	char	s[7];

	fails = g_fails;
	ft_bzero(s, 7);
	ASSERT(0 == ft_memcmp("a", ft_strcat(s, "a"), 1));
	ASSERT(0 == ft_memcmp("abb", ft_strcat(s, "bb"), 3));
	ASSERT(0 == ft_memcmp("abbccc", ft_strcat(s, "ccc"), 6));
	ft_bzero(s, 7);
	ft_memset(s, 'a', 3);
	ASSERT(0 == ft_memcmp("aaabbb", ft_strcat(s, "bbb"), 1));
	return (g_fails - fails);
}
