# Variables
NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror -I inc

# Directories
LIBFT_DIR = inc/libft
FT_PRINTF_DIR = src
UTIL_DIR = $(FT_PRINTF_DIR)/util

# Source files
FT_PRINTF_SRC = $(FT_PRINTF_DIR)/ft_printf.c
UTIL_SRC = $(UTIL_DIR)/util.c $(UTIL_DIR)/pointer_set.c $(UTIL_DIR)/ft_convert_hex.c

# Object directories
OBJ_DIR = obj
FT_PRINTF_OBJ_DIR = $(OBJ_DIR)/src
UTIL_OBJ_DIR = $(OBJ_DIR)/util

# Object files
FT_PRINTF_OBJ = $(FT_PRINTF_SRC:$(FT_PRINTF_DIR)/%.c=$(FT_PRINTF_OBJ_DIR)/%.o)
UTIL_OBJ = $(UTIL_SRC:$(UTIL_DIR)/%.c=$(UTIL_OBJ_DIR)/%.o)
OBJ = $(FT_PRINTF_OBJ) $(UTIL_OBJ)

# Rules
all: $(NAME)

$(NAME): libft $(OBJ)
	@cp $(LIBFT_DIR)/libft.a $(NAME)
	@ar rcs $(NAME) $(OBJ)

# Compile ft_printf sources
$(FT_PRINTF_OBJ_DIR)/%.o: $(FT_PRINTF_DIR)/%.c | $(FT_PRINTF_OBJ_DIR)
	@mkdir -p $(FT_PRINTF_OBJ_DIR)
	@$(CC) $(CFLAGS) -c $< -o $@

# Compile util sources
$(UTIL_OBJ_DIR)/%.o: $(UTIL_DIR)/%.c | $(UTIL_OBJ_DIR)
	@mkdir -p $(UTIL_OBJ_DIR)
	@$(CC) $(CFLAGS) -c $< -o $@

# Create object directories
$(FT_PRINTF_OBJ_DIR):
	@mkdir -p $@

$(UTIL_OBJ_DIR):
	@mkdir -p $@

# Build libft using its own Makefile
libft:
	@make -C $(LIBFT_DIR)

# Cleaning rules
clean:
	@rm -rf $(OBJ_DIR)
	@make -C $(LIBFT_DIR) clean

fclean: clean
	@rm -f $(NAME)
	@make -C $(LIBFT_DIR) fclean

re: fclean all

# Check code with norminette
norm:
	@norminette

.PHONY: all clean fclean re norm libft
