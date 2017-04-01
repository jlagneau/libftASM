/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   list_test.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 08:52:37 by jlagneau          #+#    #+#             */
/*   Updated: 2017/04/01 17:44:43 by jlagneau         ###   ########.fr       */
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

t_pair g_tests[] = {
	{"ft_bzero    ", ft_bzero_test},
	{"ft_strcat   ", ft_strcat_test},
	{"ft_isalpha  ", ft_isalpha_test},
	{"ft_isdigit  ", ft_isdigit_test},
	{"ft_isalnum  ", ft_isalnum_test},
	{"ft_isascii  ", ft_isascii_test},
	{"ft_isprint  ", ft_isprint_test},
	{"ft_toupper  ", ft_toupper_test},
	{"ft_tolower  ", ft_tolower_test},
	{"ft_puts     ", ft_puts_test},
	{"ft_strlen   ", ft_strlen_test},
	{"ft_memset   ", ft_memset_test},
	{"ft_memcpy   ", ft_memcpy_test},
	{"ft_strdup   ", ft_strdup_test},
	{"ft_putchar  ", ft_putchar_test},
	{"ft_putstr   ", ft_putstr_test},
	{"ft_putnbr   ", ft_putnbr_test},
	{"ft_putendl  ", ft_putendl_test},
	{"ft_memcmp   ", ft_memcmp_test},
	{"ft_strcmp   ", ft_strcmp_test},
	{"ft_strcpy   ", ft_strcpy_test},
	{"ft_strnew   ", ft_strnew_test},
	{"ft_strrepl  ", ft_strrepl_test},
	{0, 0}
};

#endif
