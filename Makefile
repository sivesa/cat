CFLAGS	+= -Wextra -Wall -Werror
CFLAGS	+= -ansi -pedantic
CFLAGS	+= -I.

SRC		= cat.c ft_putchar.c ft_putstr.c ft_strlen.c
LIB		= cat.h
NAME		= cat

all:    $(NAME)

$(NAME):        $(SRC)
	gcc -o $(NAME) $(SRC) -L $(LIB)

clean:
	rm -rf $(NAME)

fclean:	clean
	rm -rf $(NAME)

re:	fclean all

.PHONY:	all clean fclean re
