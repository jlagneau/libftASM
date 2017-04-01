/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcpy_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/01 01:09:11 by jlagneau          #+#    #+#             */
/*   Updated: 2017/04/01 02:47:42 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <libft.h>
#include "test.h"

int			ft_strcpy_test(void)
{
	int		fails;
	char	*s;

	fails = g_fails;
	s = ft_strnew(14);
	ASSERT(0 == ft_strcmp("Hello, World !", ft_strcpy(s, "Hello, World !")));
	ASSERT(0 == ft_strcmp("Ha", ft_strcpy(s, "Ha")));
	ASSERT(0 == ft_strcmp("!", ft_strcpy(s, "!")));
	ASSERT(0 == ft_strcmp("", ft_strcpy(s, "")));
	free(s);
	return (g_fails - fails);
}
