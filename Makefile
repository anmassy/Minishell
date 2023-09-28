# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anmassy <anmassy@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/28 15:02:48 by anmassy           #+#    #+#              #
#    Updated: 2023/09/28 15:04:03 by anmassy          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC =	minishell.c \
		

OBJ = $(SRC:.c=.o)

NAME = minishell
CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f
INCS = -I ./include

GREY = \e[0;30m
RED = \e[0;31m
GREEN = \e[0;32m

all : $(NAME)

%.o: %.c
	@$(CC) $(CFLAGS) $(INCS) -c $< -o $@

$(NAME): $(OBJ)
	@$(CC) $(CFLAGS) $(INCS) $(OBJ) -o $(NAME)

clean :
	@echo "$(RED) Cleaning files..."
	@$(RM) $(OBJ) $(OBJ_BONUS)

fclean : clean
	@echo -n "$(RED)"
	@echo " Cleaning binaries..."
	@$(RM) $(NAME)

re : fclean all
	@echo "$(GREEN) re-make finish"

.PHONY : all clean fclean re
