from turtle import Screen
from moose_characteristics import MooseDrawer
FONT = ("Courier", 100, "normal")


screen = Screen()
screen.setup(width=1080, height=840)
screen.bgcolor("black")
pen = MooseDrawer()
pen.speed("fastest")

pen.nostrils()
pen.snout()
pen.head()
pen.eyes()
pen.right_antler()
pen.left_antler()
pen.goto(20, -200)
pen.write("Athena the Moose", align="center", font=FONT)
pen.hideturtle()

screen.exitonclick()
