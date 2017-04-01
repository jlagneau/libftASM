/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 09:05:56 by jlagneau          #+#    #+#             */
/*   Updated: 2017/04/01 01:12:33 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TEST_H
# define TEST_H
# include "assert_test.h"

int		close_stdout(void);
void	reopen_stdout(int fd);

int		ft_bzero_test(void);
int		ft_strcat_test(void);
int		ft_isalpha_test(void);
int		ft_isdigit_test(void);
int		ft_isalnum_test(void);
int		ft_isascii_test(void);
int		ft_isprint_test(void);
int		ft_toupper_test(void);
int		ft_tolower_test(void);
int		ft_puts_test(void);

int		ft_strlen_test(void);
int		ft_memset_test(void);
int		ft_memcpy_test(void);
int		ft_strdup_test(void);

int		ft_putchar_test(void);
int		ft_putstr_test(void);
int		ft_putnbr_u_test(void);
int		ft_putendl_test(void);
int		ft_memcmp_test(void);
int		ft_strcmp_test(void);
int		ft_strcpy_test(void);
int		ft_strnew_test(void);
int		ft_strrepl_test(void);

#endif
