/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalpha_test.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/23 08:30:17 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/30 23:58:40 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "test.h"

int			ft_isalpha_test(void)
{
	int		fails;

	fails = g_fails;
	ASSERT(1 == ft_isalpha('Z'));
	ASSERT(1 == ft_isalpha('A'));
	ASSERT(1 == ft_isalpha('a'));
	ASSERT(1 == ft_isalpha('z'));
	ASSERT(1 == ft_isalpha('e'));
	ASSERT(1 == ft_isalpha('X'));
	ASSERT(0 == ft_isalpha('*'));
	ASSERT(0 == ft_isalpha('^'));
	ASSERT(0 == ft_isalpha('@'));
	return (g_fails - fails);
}
