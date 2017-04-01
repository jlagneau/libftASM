/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 09:13:36 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/29 16:30:14 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include "assert_test.h"

int			ft_strlen_test(void)
{
	int		fails;

	fails = g_fails;
	ASSERT(0 == ft_strlen(0));
	ASSERT(0 == ft_strlen(""));
	ASSERT(14 == ft_strlen("Hello, World !"));
	return (g_fails - fails);
}
