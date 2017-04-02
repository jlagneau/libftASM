/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/10/24 07:15:31 by jlagneau          #+#    #+#             */
/*   Updated: 2017/04/02 20:23:54 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H
# include <string.h>

void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *d, const char *s);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
int		ft_puts(const char *s);

size_t	ft_strlen(const char *s);
void	*ft_memset(void *s, int c, size_t n);
void	*ft_memcpy(void *d, const void *s, size_t n);
char	*ft_strdup(const char *s);

int		ft_cat(int fd);

int		ft_putchar(char c);
int		ft_putchar_fd(char c, int fd);
int		ft_putstr(const char *s);
int		ft_putstr_fd(const char *s, int fd);
int		ft_putnbr(long n);
int		ft_putnbr_fd(long n, int fd);
int		ft_putendl(const char *s);
int		ft_putendl_fd(const char *s, int fd);
int		ft_memcmp(const void *s1, const void *s2, size_t n);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strcpy(char *d, const char *s);
char	*ft_strnew(size_t n);
char	*ft_strrepl(char *s, int (*f)(int));

#endif
