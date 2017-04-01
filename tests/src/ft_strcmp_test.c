/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcmp_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:36:48 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 23:38:34 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_strcmp_test(void)
{
	int		fails;

	fails = g_fails;
	ASSERT(0 == ft_strcmp("", ""));
	ASSERT(0 == ft_strcmp("aaa", "aaa"));
	ASSERT(-42 == ft_strcmp("", "***"));
	ASSERT(42 == ft_strcmp("***", ""));
	ASSERT(1 == ft_strcmp("aab", "aaa"));
	ASSERT(-122 == ft_strcmp("abcdef", "abcdefzyx"));
	ASSERT(122 == ft_strcmp("abcdefzyx", "abcdef"));
	return (g_fails - fails);
}
