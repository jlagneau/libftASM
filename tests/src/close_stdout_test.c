/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   close_stdout_test.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlagneau </var/spool/mail/jlagneau>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/22 16:19:17 by jlagneau          #+#    #+#             */
/*   Updated: 2017/03/22 16:26:23 by jlagneau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>

int			close_stdout(void)
{
	int		bak;
	int		new;

	fflush(stdout);
	bak = dup(1);
	new = open("/dev/null", O_WRONLY);
	dup2(new, 1);
	close(new);
	return (bak);
}

void		reopen_stdout(int fd)
{
	fflush(stdout);
	dup2(fd, 1);
	close(fd);
}
