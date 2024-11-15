# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anpicard <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/06 11:02:30 by anpicard          #+#    #+#              #
#    Updated: 2024/11/15 11:07:56 by anpicard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Var
NAME = libftprintf.a
LIBFT_DIR = inc/libft
FT_PRINTF_DIR = src
UTIL_DIR = $(FT_PRINTF_DIR)/util

# Sources of libft
LIBFT_SRC = $(LIBFT_DIR)/ft_strlen.c \
            $(LIBFT_DIR)/ft_atoi.c \
            $(LIBFT_DIR)/ft_isalpha.c \
            $(LIBFT_DIR)/ft_isdigit.c \
            $(LIBFT_DIR)/ft_isalnum.c \
            $(LIBFT_DIR)/ft_isascii.c \
            $(LIBFT_DIR)/ft_isprint.c \
            $(LIBFT_DIR)/ft_memset.c \
            $(LIBFT_DIR)/ft_bzero.c \
            $(LIBFT_DIR)/ft_memcpy.c \
            $(LIBFT_DIR)/ft_memmove.c \
            $(LIBFT_DIR)/ft_strlcpy.c \
            $(LIBFT_DIR)/ft_strlcat.c \
            $(LIBFT_DIR)/ft_toupper.c \
            $(LIBFT_DIR)/ft_tolower.c \
            $(LIBFT_DIR)/ft_strchr.c \
            $(LIBFT_DIR)/ft_strrchr.c \
            $(LIBFT_DIR)/ft_strncmp.c \
            $(LIBFT_DIR)/ft_memchr.c \
            $(LIBFT_DIR)/ft_memcmp.c \
            $(LIBFT_DIR)/ft_strnstr.c \
            $(LIBFT_DIR)/ft_strdup.c \
            $(LIBFT_DIR)/ft_calloc.c \
            $(LIBFT_DIR)/ft_substr.c \
            $(LIBFT_DIR)/ft_strjoin.c \
            $(LIBFT_DIR)/ft_strtrim.c \
            $(LIBFT_DIR)/ft_split.c \
            $(LIBFT_DIR)/ft_itoa.c \
            $(LIBFT_DIR)/ft_strmapi.c \
            $(LIBFT_DIR)/ft_striteri.c \
            $(LIBFT_DIR)/ft_putchar_fd.c \
            $(LIBFT_DIR)/ft_putstr_fd.c \
            $(LIBFT_DIR)/ft_putendl_fd.c \
            $(LIBFT_DIR)/ft_putnbr_fd.c \
            $(LIBFT_DIR)/ft_lstadd_back_bonus.c \
            $(LIBFT_DIR)/ft_lstnew_bonus.c \
            $(LIBFT_DIR)/ft_lstadd_front_bonus.c \
            $(LIBFT_DIR)/ft_lstclear_bonus.c \
            $(LIBFT_DIR)/ft_lstdelone_bonus.c \
            $(LIBFT_DIR)/ft_lstlast_bonus.c \
            $(LIBFT_DIR)/ft_lstsize_bonus.c \
            $(LIBFT_DIR)/ft_lstiter_bonus.c \
            $(LIBFT_DIR)/ft_lstmap_bonus.c

# Sources of ft_printf and util
FT_PRINTF_SRC = $(FT_PRINTF_DIR)/ft_printf.c
UTIL_SRC = $(UTIL_DIR)/util.c \
		$(UTIL_DIR)/pointer_set.c

SRC = $(LIBFT_SRC) $(FT_PRINTF_SRC) $(UTIL_SRC)

# Object directories
OBJ_DIR = obj
LIBFT_OBJ_DIR = $(OBJ_DIR)/libft
FT_PRINTF_OBJ_DIR = $(OBJ_DIR)/src
UTIL_OBJ_DIR = $(OBJ_DIR)/util

OBJ = $(LIBFT_SRC:$(LIBFT_DIR)/%.c=$(LIBFT_OBJ_DIR)/%.o) \
      $(FT_PRINTF_SRC:$(FT_PRINTF_DIR)/%.c=$(FT_PRINTF_OBJ_DIR)/%.o) \
      $(UTIL_SRC:$(UTIL_DIR)/%.c=$(UTIL_OBJ_DIR)/%.o)

# Flags
CC = cc
CFLAGS = -Wall -Wextra -Werror -I inc

# Rules
all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

# Compile libft sources
$(LIBFT_OBJ_DIR)/%.o: $(LIBFT_DIR)/%.c | $(LIBFT_OBJ_DIR)
	mkdir -p $(LIBFT_OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Compile ft_printf sources
$(FT_PRINTF_OBJ_DIR)/%.o: $(FT_PRINTF_DIR)/%.c | $(FT_PRINTF_OBJ_DIR)
	mkdir -p $(FT_PRINTF_OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Compile util sources
$(UTIL_OBJ_DIR)/%.o: $(UTIL_DIR)/%.c | $(UTIL_OBJ_DIR)
	mkdir -p $(UTIL_OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Create object directories
$(LIBFT_OBJ_DIR):
	mkdir -p $@

$(FT_PRINTF_OBJ_DIR):
	mkdir -p $@

$(UTIL_OBJ_DIR):
	mkdir -p $@

# Cleaning rules
clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

# Check code with norminette
norm:
	norminette $(SRC) $(LIBFT_SRC)

.PHONY: all clean fclean re norm
