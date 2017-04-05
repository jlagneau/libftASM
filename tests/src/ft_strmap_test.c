/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmap_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/01 01:10:32 by jlagneau          #+#    #+#             */
/*   Updated: 2017/04/05 23:09:23 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <libft.h>
#include "test.h"

static int	rot13c(int c)
{
	if (ft_isalpha(c))
	{
		if ((c >= 'a' && c <= 'm') || (c >= 'A' && c <= 'M'))
			return (c + 13);
		else
			return (c - 13);
	}
	return (c);
}

int			ft_strmap_test(void)
{
	int		fails;
	char	*s;

	fails = g_fails;
	s = ft_strdup("Hello, World !");
	ASSERT(0 == ft_strcmp("Uryyb, Jbeyq !", ft_strmap(s, &rot13c)));
	ASSERT(0 == ft_strcmp("URYYB, JBEYQ !", ft_strmap(s, &ft_toupper)));
	ASSERT(0 == ft_strcmp("uryyb, jbeyq !", ft_strmap(s, &ft_tolower)));
	free(s);
	return (g_fails - fails);
}
