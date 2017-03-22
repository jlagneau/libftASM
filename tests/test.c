#include "../include/libft.h"

#include <stdio.h>

int	main(void)
{
	char *s = "Hello, World !";

	printf("%zu\n", ft_strlen(s));
	ft_putstr(s);
	ft_putendl(s);
	ft_puts(s);
	return (0);
}
