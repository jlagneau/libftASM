/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum_test.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:26:29 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 01:03:14 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_isalnum_test(void)
{
	int		fails;

	fails = g_fails;
	ASSERT(1 == ft_isalnum('A'));
	ASSERT(1 == ft_isalnum('Z'));
	ASSERT(1 == ft_isalnum('a'));
	ASSERT(1 == ft_isalnum('z'));
	ASSERT(1 == ft_isalnum('e'));
	ASSERT(1 == ft_isalnum('G'));
	ASSERT(1 == ft_isalnum('0'));
	ASSERT(1 == ft_isalnum('9'));
	ASSERT(1 == ft_isalnum('7'));
	ASSERT(0 == ft_isalnum('*'));
	ASSERT(0 == ft_isalnum('!'));
	ASSERT(0 == ft_isalnum('^'));
	ASSERT(0 == ft_isalnum('\n'));
	return (g_fails - fails);
}
