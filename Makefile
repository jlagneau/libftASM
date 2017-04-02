#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/10/24 07:02:44 by jlagneau          #+#    #+#              #
#    Updated: 2017/04/02 22:41:24 by jlagneau         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

# Variables
NAME      = libfts.a
DEB_NAME  = libfts_debug.a

OBJS_PATH = .obj/
DEPS_PATH = .dep/

SRCS_PATH = src/
HEAD_PATH = includes/

CFLAGS    = -f
DEPSFLAGS = -MD "$(DEPS_PATH)$(notdir $(@:.o=.d))"

# Detect OS
SHELL     := /usr/bin/env zsh
UNAME_S   := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
OS_DEFINE := $(shell cp -n define/define_linux.s define/define.s)
CFLAGS    += elf64 -dELF
STRPFLAGS += --strip-unneeded
endif
ifeq ($(UNAME_S),Darwin)
OS_DEFINE := $(shell cp -n define/define_macosx.s define/define.s)
CFLAGS    += macho64
STRPFLAGS += -x
endif

AR        = ar
ARFLAGS   = rcs

RM        = rm
RMFLAGS   = -rf

# Sources files
SRCS      := $(shell find src -type f | tr '\n' ' ')

OBJS      = $(addprefix $(OBJS_PATH), $(notdir $(SRCS:.s=.o)))
DEPS	  = $(addprefix $(DEPS_PATH), $(notdir $(SRCS:.s=.d)))

DEB_OBJS  = $(addprefix $(OBJS_PATH), $(notdir $(SRCS:.s=_debug.o)))
DEB_DEPS  = $(addprefix $(DEPS_PATH), $(notdir $(DEB_OBJS:.o=.d)))

# Phony
.PHONY: all re clean fclean debug redebug test

# Rules
$(NAME): CFLAGS += -Ox
$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $@ $^
	ranlib $@

$(DEB_NAME): CFLAGS += -g
$(DEB_NAME): $(DEB_OBJS)
	$(AR) $(ARFLAGS) $@ $^
	ranlib $@

$(OBJS_PATH)%.o: $(SRCS_PATH)%.s
	@mkdir -p $(OBJS_PATH) $(DEPS_PATH)
	nasm $(CFLAGS) $(DEPSFLAGS) -o $@ $<
	@strip $(STRPFLAGS) $@ -o $@

$(OBJS_PATH)%_debug.o: $(SRCS_PATH)%.s
	@mkdir -p $(OBJS_PATH) $(DEPS_PATH)
	nasm $(CFLAGS) $(DEPSFLAGS) -o $@ $<

debug: $(DEB_NAME)

redebug: fclean debug

test: $(NAME)
	make -C tests
	@ln -s ./tests/test ./test
	@ln -s ./tests/ft_cat.sh ./ft_cat

all: $(NAME)

clean:
	make -C tests clean
	$(RM) $(RMFLAGS) $(OBJS_PATH) $(DEPS_PATH)

fclean: clean
	make -C tests fclean
	$(RM) $(RMFLAGS) $(NAME) $(DEB_NAME) ./test ./ft_cat

re: fclean all

-include $(DEPS)
-include $(DEB_DEPS)
