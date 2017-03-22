/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen_test.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau </var/spool/mail/jlagneau>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 09:13:36 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/22 15:36:16 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

int		ft_strlen_test(void)
{
	if (0 != ft_strlen(0))
		return (1);
	else if (0 != ft_strlen(""))
		return (2);
	else if (14 != ft_strlen("Hello, World !"))
		return (3);
	return (0);
}
