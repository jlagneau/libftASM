/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/10/24 07:15:31 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/31 01:18:04 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H
# include <string.h>

int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);

int		ft_puts(char *s);
size_t	ft_strlen(char *s);

int		ft_putchar(char c);
int		ft_putchar_fd(char c, int fd);
int		ft_putstr(char *s);
int		ft_putstr_fd(char *s, int fd);
int		ft_putnbr_u(unsigned int n);
int		ft_putnbr_u_fd(unsigned int n, int fd);
int		ft_putendl(char *s);
int		ft_putendl_fd(char *s, int fd);

#endif
