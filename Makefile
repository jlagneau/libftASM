#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/10/24 07:02:44 by jlagneau          #+#    #+#              #
#    Updated: 2017/03/21 09:20:05 by jlagneau         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

# Variables
NAME      = libfts.a
DEB_NAME  = libfts_debug.a

OBJS_PATH = .obj/
DEPS_PATH = .dep/

SRCS_PATH = src/
HEAD_PATH = includes/

CC        = nasm
CFLAGS    = -f
DEPSFLAGS = -MD "$(DEPS_PATH)$(notdir $(@:.o=.d))"

# Detect OS
UNAME_S   := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
OS_DEFINE := $(shell cp define/define_linux.s define/define.s)
CFLAGS    += elf64
endif
ifeq ($(UNAME_S),Darwin)
OS_DEFINE := $(shell cp define/define_macosx.s define/define.s)
CFLAGS    += macho64
endif

AR        = ar
ARFLAGS   = rcs

RM        = rm
RMFLAGS   = -rf

# Sources files
SRCS      := $(shell find src -type f | tr '\n' ' ')
OBJS      = $(addprefix $(OBJS_PATH), $(notdir $(SRCS:.s=.o)))
DEB_OBJS  = $(addprefix $(OBJS_PATH), $(notdir $(SRCS:.s=_debug.o)))

DEB_OBJS  = $(OBJS:.o=_debug.o)
DEB_DEPS  = $(addprefix $(DEPS_PATH), $(notdir $(DEB_OBJS:.o=.d)))

# Rules
$(NAME): CFLAGS += -Ox
$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $@ $^
	ranlib $@

$(DEB_NAME): CFLAGS += -F stabs -g
$(DEB_NAME): $(DEB_OBJS)
	$(AR) $(ARFLAGS) $@ $^
	ranlib $@

$(OBJS_PATH)%.o: $(SRCS_PATH)%.s
	@mkdir -p $(OBJS_PATH) $(DEPS_PATH)
	$(CC) $(CFLAGS) $(DEPSFLAGS) -o $@ $<

$(OBJS_PATH)%_debug.o: $(SRCS_PATH)%.s
	@mkdir -p $(OBJS_PATH) $(DEPS_PATH)
	$(CC) $(CFLAGS) $(DEPSFLAGS) -o $@ $<

debug: $(DEB_NAME)

redebug: fclean debug

all: $(NAME)

clean:
	$(RM) $(RMFLAGS) $(OBJS_PATH) $(DEPS_PATH)

fclean: clean
	$(RM) $(RMFLAGS) $(NAME) $(DEB_NAME)

re: fclean all

.PHONY: all clean debug fclean norme redebug
