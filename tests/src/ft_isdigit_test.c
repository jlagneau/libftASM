/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isdigit_test.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:32:59 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 00:07:46 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_isdigit_test(void)
{
	int		fails;

	fails = g_fails;
	ASSERT(1 == ft_isdigit('0'))
	ASSERT(1 == ft_isdigit('9'))
	ASSERT(1 == ft_isdigit('5'))
	ASSERT(0 == ft_isdigit('!'))
	ASSERT(0 == ft_isdigit('*'))
	ASSERT(0 == ft_isdigit('\n'))
	return (g_fails - fails);
}
