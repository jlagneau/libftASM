/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   assert_test.h                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/29 16:01:51 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/29 16:25:25 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ASSERT_TEST_H
# define ASSERT_TEST_H

# define PRINTL(x)	if (0 > ft_puts(x)) return (-1)
# define PRINT(x)	if (0 > ft_putstr(x)) return (-1)
# define ASSERT(x)	if (1) {g_asserts++; if (!(x)) g_fails++;}

int					g_asserts;
int					g_fails;

#endif
