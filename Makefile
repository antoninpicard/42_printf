# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anpicard <marvin@42.fr>                    +#+  +:+       +#+        #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/06 11:02:30 by anpicard          #+#    #+#              #
#    Updated: 2024/11/14 12:29:08 by anpicard         #+#    #+#              #
#                                                                              #
# **************************************************************************** #

# Variables
NAME = libftprintf.a
LIBFT_DIR = inc/libft
FT_PRINTF_DIR = src

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

# source of src 
FT_PRINTF_SRC = $(FT_PRINTF_DIR)/ft_printf.c

SRC = $(LIBFT_SRC) $(FT_PRINTF_SRC)
OBJ_DIR = obj
LIBFT_OBJ_DIR = $(OBJ_DIR)/libft
FT_PRINTF_OBJ_DIR = $(OBJ_DIR)/src_obj
OBJ = $(LIBFT_SRC:$(LIBFT_DIR)/%.c=$(LIBFT_OBJ_DIR)/%.o) \
      $(FT_PRINTF_SRC:$(FT_PRINTF_DIR)/%.c=$(FT_PRINTF_OBJ_DIR)/%.o)

# Flags
CC = cc
CFLAGS = -Wall -Wextra -Werror

# Rules
all: $(NAME)

$(NAME): $(OBJ)
	@make -C $(LIBFT_DIR)
	ar rcs $(NAME) $(OBJ)
	@$(MAKE) wow

# Compile in dir
$(LIBFT_OBJ_DIR)/%.o: $(LIBFT_DIR)/%.c
	@mkdir -p $(LIBFT_OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(FT_PRINTF_OBJ_DIR)/%.o: $(FT_PRINTF_DIR)/%.c
	@mkdir -p $(FT_PRINTF_OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

wow:
	@echo "\033[38;5;196m          _____                    _____                _____                   _______         \033[0m"; sleep 0.1
	@echo "\033[38;5;202m         /\    \                  /\    \              /\    \                 /::\    \        \033[0m"; sleep 0.1
	@echo "\033[38;5;208m        /::\    \                /::\____\            /::\    \               /::::\    \       \033[0m"; sleep 0.1
	@echo "\033[38;5;214m       /::::\    \              /::::|   |            \:::\    \             /::::::\    \      \033[0m"; sleep 0.1
	@echo "\033[38;5;220m      /::::::\    \            /:::::|   |             \:::\    \           /::::::::\    \     \033[0m"; sleep 0.1
	@echo "\033[38;5;226m     /:::/\:::\    \          /::::::|   |              \:::\    \         /:::/~~\:::\    \    \033[0m"; sleep 0.1
	@echo "\033[38;5;190m    /:::/__\:::\    \        /:::/|::|   |               \:::\    \       /:::/    \:::\    \   \033[0m"; sleep 0.1
	@echo "\033[38;5;154m   /::::\   \:::\    \      /:::/ |::|   |               /::::\    \     /:::/    / \:::\    \  \033[0m"; sleep 0.1
	@echo "\033[38;5;118m  /::::::\   \:::\    \    /:::/  |::|   | _____        /::::::\    \   /:::/____/   \:::\____\ \033[0m"; sleep 0.1
	@echo "\033[38;5;82m /:::/\:::\   \:::\    \  /:::/   |::|   |/\    \      /:::/\:::\    \ |:::|    |     |:::|    |\033[0m"; sleep 0.1
	@echo "\033[38;5;46m/:::/  \:::\   \:::\____\/:: /    |::|   /::\____\    /:::/  \:::\____\|:::|____|     |:::|    |\033[0m"; sleep 0.1
	@echo "\033[38;5;51m\::/    \:::\  /:::/    /\::/    /|::|  /:::/    /   /:::/    \::/    / \:::\    \   /:::/    / \033[0m"; sleep 0.1
	@echo "\033[38;5;57m \/____/ \:::\/:::/    /  \/____/ |::| /:::/    /   /:::/    / \/____/   \:::\    \ /:::/    /  \033[0m"; sleep 0.1
	@echo "\033[38;5;93m          \::::::/    /           |::|/:::/    /   /:::/    /             \:::\    /:::/    /   \033[0m"; sleep 0.1
	@echo "\033[38;5;129m           \::::/    /            |::::::/    /   /:::/    /               \:::\__/:::/    /    \033[0m"; sleep 0.1
	@echo "\033[38;5;165m           /:::/    /             |:::::/    /    \::/    /                 \::::::::/    /     \033[0m"; sleep 0.1
	@echo "\033[38;5;201m          /:::/    /              |::::/    /      \/____/                   \::::::/    /      \033[0m"; sleep 0.1
	@echo "\033[38;5;200m         /:::/    /               /:::/    /                                  \::::/    /       \033[0m"; sleep 0.1
	@echo "\033[38;5;199m        /:::/    /               /:::/    /                                    \::/____/        \033[0m"; sleep 0.1
	@echo "\033[38;5;198m        \::/    /                \::/    /                                      ~~              \033[0m"; sleep 0.1
	@echo "\033[38;5;197m         \/____/                  \/____/                                                        \033[0m"; sleep 0.1

norm:
	norminette $(SRC) $(LIBFT_SRC)

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re norm wow
