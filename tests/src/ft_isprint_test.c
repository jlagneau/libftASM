/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isprint_test.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:34:31 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 01:33:38 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_isprint_test(void)
{
	int		fails;

	fails = g_fails;
	ASSERT(1 == ft_isprint('0'))
	ASSERT(1 == ft_isprint('9'))
	ASSERT(1 == ft_isprint('5'))
	ASSERT(1 == ft_isprint('!'))
	ASSERT(1 == ft_isprint('*'))
	ASSERT(1 == ft_isprint(' '))
	ASSERT(0 == ft_isprint(-1))
	ASSERT(0 == ft_isprint('\n'))
	ASSERT(0 == ft_isprint(128))
	return (g_fails - fails);
}
