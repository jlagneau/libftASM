/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_cat_test.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau </var/spool/mail/jlagneau>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/02 20:17:46 by jlagneau          #+#    #+#             */
/*   Updated: 2017/04/02 21:49:08 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <libft.h>

int			ft_cat_test(const char *s)
{
	int		ret;
	int		fd;
	char	tmp[4096];

	if (s == 0)
		ret = ft_cat(0);
	else
	{
		fd = open(s, O_RDONLY);
		if (fd == -1)
		{
			ft_bzero(tmp, 4096);
			(void)ft_strcat(tmp, "ft_cat: ");
			(void)ft_strcat(tmp, s);
			perror(tmp);
			return (-1);
		}
		ret = ft_cat(fd);
		close(fd);
	}
	return (ret);
}
