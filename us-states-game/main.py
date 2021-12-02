import turtle
import pandas


screen = turtle.Screen()
screen.title("U.S. States Game")
image = "blank_states_img.gif"
screen.addshape(image)
turtle.shape(image)
marker = turtle.Turtle()

game_is_on = True
score = 0

data = pandas.read_csv("50_states.csv")
# Put all columns into a list
states_list = data.state.to_list()
states_x_cor = data.x.to_list()
states_y_cor = data.y.to_list()

while game_is_on:
    answer_states = screen.textinput(title=f"{score}/50 States Correct", prompt="What's another state's name?").title()
    if answer_states == "Exit":
        break
    for state in states_list:
        if answer_states == state:
            marker.speed("fastest")
            marker.hideturtle()
            marker.penup()
            marker.goto(states_x_cor[states_list.index(state)], states_y_cor[states_list.index(state)])
            marker.write(f"{state}", align="left", font=("Arial", 10, "normal"))
            score += 1
    if score == 50:
        game_is_on = False
screen.mainloop()
