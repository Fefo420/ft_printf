CC = gcc
CFLAGS = -Wall -Wextra -Werror

NAME = libftprintf.a

SRCS = ft_printf.c ft_putstr.c ft_putnbr.c ft_putchar.c ft_puthexa.c ft_putuns.c ft_putptr.c
OBJS = $(SRCS:.c=.o)

all: $(NAME)


$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@


clean:
	rm -f $(OBJS)


fclean: clean
	rm -f $(NAME)

re: fclean all