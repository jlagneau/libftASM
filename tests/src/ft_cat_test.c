/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_cat_test.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau </var/spool/mail/jlagneau>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/02 20:17:46 by jlagneau          #+#    #+#             */
/*   Updated: 2017/04/05 09:58:51 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <libft.h>
#include "test.h"

static int			verify_fd(int fd, const char *s)
{
	struct stat		buf;
	char			tmp[4096];

	ft_bzero(tmp, 4096);
	(void)ft_strcat(tmp, "ft_cat: ");
	(void)ft_strcat(tmp, s);
	if (fd == -1 || fstat(fd, &buf) != 0)
	{
		perror(tmp);
		return (1);
	}
	if (S_ISDIR(buf.st_mode))
	{
		PRINTR(ft_strcat(tmp, ": Is a directory"));
		return (1);
	}
	return (0);
}

int					ft_cat_test(const char *s)
{
	int				ret;
	int				fd;

	if (s == 0)
		ret = ft_cat(0);
	else
	{
		fd = open(s, O_RDONLY);
		if (verify_fd(fd, s))
			return (1);
		ret = ft_cat(fd);
		close(fd);
	}
	return (ret);
}
