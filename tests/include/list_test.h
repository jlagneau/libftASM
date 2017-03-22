/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   list_test.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau </var/spool/mail/jlagneau>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 08:52:37 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/22 14:08:35 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIST_TEST_H
# define LIST_TEST_H
# include "test.h"


typedef				int	(*t_test)(void);

typedef struct		s_pair
{
	char const		*name;
	t_test			func;
}					t_pair;

t_pair tests[] = {
	{"ft_strlen", ft_strlen_test},
	{"ft_putstr", ft_putstr_test},
	{"ft_putendl", ft_putendl_test},
	{"ft_puts", ft_puts_test},
	{0, 0}
};

#endif
