#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/11/21 08:29:58 by jlagneau          #+#    #+#              #
#    Updated: 2017/03/22 16:16:26 by jlagneau         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

# Variables
NAME      = test

# Directories
LIB_PATH  = ../
LIBH_PATH = ../include/

SRCS_PATH = src/
HEAD_PATH = include/

OBJS_PATH = .obj/
DEPS_PATH = .dep/

# Exec
CC        = gcc
RM        = rm -rf

# Flags
CFLAGS    = -Wall -Wextra -Werror -pedantic
CPPFLAGS  = -I$(HEAD_PATH) -I$(LIBH_PATH)
LDFLAGS   = -L$(LIB_PATH)
LDLIBS    =
DEPSFLAGS = -MMD -MF"$(DEPS_PATH)$(notdir $(@:.o=.d))"

# Files
SRCS     := $(shell find src -type f)

DEPS      = $(addprefix $(DEPS_PATH), $(notdir $(SRCS:.c=.d)))
OBJS      = $(addprefix $(OBJS_PATH), $(notdir $(SRCS:.c=.o)))

DEB_OBJS  = $(OBJS:.o=_debug.o)
DEB_DEPS  = $(addprefix $(DEPS_PATH), $(notdir $(DEB_OBJS:.o=.d)))

# Phony
.PHONY: all clean fclean norme re redebug

# Rules
$(NAME): LDLIBS += -lfts
$(NAME): $(OBJS)
	$(CC) $^ $(LDFLAGS) $(LDLIBS) -o $@

debug: CFLAGS += -g3
debug: LDLIBS += -lfts_debug
debug: $(DEB_OBJS)
	$(CC) $^ $(LDFLAGS) $(LDLIBS) -o $@

$(OBJS_PATH)%.o: $(SRCS_PATH)%.c
	@mkdir -p $(OBJS_PATH) $(DEPS_PATH)
	$(CC) $(CFLAGS) $(CPPFLAGS) $(DEPSFLAGS) -c $< -o $@

$(OBJS_PATH)%_debug.o: $(SRCS_PATH)%.c
	@mkdir -p $(OBJS_PATH) $(DEPS_PATH)
	$(CC) $(CFLAGS) $(CPPFLAGS) $(DEPSFLAGS) -c $< -o $@

all: $(NAME)

clean:
	$(RM) $(OBJS_PATH) $(DEPS_PATH)

fclean: clean
	$(RM) $(NAME) debug

re: fclean all

redebug: fclean debug

-include $(DEPS)
-include $(DEB_DEPS)