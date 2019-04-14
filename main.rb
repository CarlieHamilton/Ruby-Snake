# ----------------------------------------------------------------------
#                 RUBY SNAKE
# by Carlie Hamilton
# 14 April 2019
# Classic snake game in your terminal!
# -----------------------------------------------------------------------

require 'io/console'
require_relative 'board'
require_relative 'snake'

FPS = 30

board = Board.new
snake = Snake.new

while true
#     start = Time.now
    snake.display(board)
#     sleep(start + FPS - Time.now)
    case $stdin.getch
    when "a"
        snake.move_left(board)
    when "e", "d"
        snake.move_right(board)
    when ",", "w"
        snake.move_up(board)
    when "o", "s"
        snake.move_down(board)
    else
        return
    end
end