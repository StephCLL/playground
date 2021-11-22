from turtle import Turtle
RIGHT_ANGLE = 90
FACING_RIGHT = 0
FACING_LEFT = 180


class Shapes(Turtle):
    def __init__(self):
        super().__init__()
        self.penup()
        self.color("white")

    def move_forward(self, distance):
        self.forward(distance)

    def square(self, measurement):
        self.pendown()
        for _ in range(4):
            self.move_forward(measurement)
            self.left(RIGHT_ANGLE)

    def rectangle(self, width, length, direction):
        self.pendown()
        for _ in range(4):
            if self.heading() == FACING_RIGHT or self.heading() == FACING_LEFT:
                self.move_forward(width)
                self.right(direction)
            else:
                self.move_forward(length)
                self.right(direction)
