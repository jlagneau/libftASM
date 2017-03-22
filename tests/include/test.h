/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau </var/spool/mail/jlagneau>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 09:05:56 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/22 16:22:27 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TEST_H
# define TEST_H
# define PRINTL(x)	if (0 > ft_puts(x)) return (1)
# define PRINT(x)	if (0 > ft_putstr(x)) return (1)

int					close_stdout(void);
void				reopen_stdout(int fd);

int					ft_strlen_test(void);
int					ft_putstr_test(void);
int					ft_putendl_test(void);
int					ft_puts_test(void);

#endif
