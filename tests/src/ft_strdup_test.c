/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:37:20 by jlagneau          #+#    #+#             */
/*   Updated: 2017/04/01 02:19:49 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <libft.h>
#include "test.h"

int			ft_strdup_test(void)
{
	int		fails;
	char	*s;

	fails = g_fails;
	s = ft_strdup("Hello, World !");
	ASSERT(0 == ft_strcmp("Hello, World !", s));
	free(s);
	s = ft_strdup("");
	ASSERT(0 == ft_strcmp("", s));
	free(s);
	return (g_fails - fails);
}
