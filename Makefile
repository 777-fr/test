# Makefile minimal pour tester Jenkins SEED

CC      = gcc
CFLAGS  = -Wall -Wextra -Werror
SRC     = main.c
OBJ     = $(SRC:.c=.o)
NAME    = my_program

all: $(NAME)

$(NAME): $(OBJ)
    $(CC) $(CFLAGS) -o $(NAME) $(OBJ)
%.o: %.c
    $(CC) $(CFLAGS) -c $< -o $@
clean:
    rm -f $(OBJ)
fclean: clean
    rm -f $(NAME)
re: fclean all
tests_run: $(NAME)
    @echo "Running tests..."
    @./$(NAME) || true