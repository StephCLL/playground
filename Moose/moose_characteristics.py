from shapes import Shapes
EYE_DISTANCE = 20
NOSE_DISTANCE = 40
RIGHT_ANGLE = 90
REVERSE_RIGHT_ANGLE = 270


class MooseDrawer(Shapes):
    def __init__(self):
        super().__init__()

    def nostrils(self):
        self.goto(-100, -20)
        self.square(NOSE_DISTANCE)
        self.penup()
        self.goto(60, -20)
        self.square(NOSE_DISTANCE)

    def snout(self):
        self.penup()
        self.goto(-120, 40)
        self.rectangle(240, 80, RIGHT_ANGLE)

    def head(self):
        self.goto(-180, 40)
        self.rectangle(360, 200, REVERSE_RIGHT_ANGLE)

    def eyes(self):
        self.up()
        self.goto(-80, 220)
        self.rectangle(40, 80, RIGHT_ANGLE)
        self.up()
        self.goto(-70, 160)
        self.square(EYE_DISTANCE)
        self.up()
        self.goto(40, 220)
        self.rectangle(40, 80, RIGHT_ANGLE)
        self.up()
        self.goto(50, 160)
        self.square(EYE_DISTANCE)

    def right_antler(self):
        self.up()
        self.goto(180, 160)
        self.down()
        self.move_forward(300)
        self.setheading(RIGHT_ANGLE)
        self.move_forward(40)
        self.left(RIGHT_ANGLE)
        # Antler mounts
        self.move_forward(20)
        for hills in range(3):
            self.right(RIGHT_ANGLE)
            self.move_forward(100)
            self.left(RIGHT_ANGLE)
            self.move_forward(40)
            self.left(RIGHT_ANGLE)
            self.move_forward(100)
            self.right(RIGHT_ANGLE)
            self.move_forward(50)
        self.move_forward(10)
        self.penup()

    def left_antler(self):
        # Draw left Antler
        self.goto(-180, 160)
        self.pendown()
        self.move_forward(300)
        self.setheading(RIGHT_ANGLE)
        self.move_forward(40)
        self.right(RIGHT_ANGLE)
        # Antler mounts
        self.move_forward(20)
        for hills in range(3):
            self.left(RIGHT_ANGLE)
            self.move_forward(100)
            self.right(RIGHT_ANGLE)
            self.move_forward(40)
            self.right(RIGHT_ANGLE)
            self.move_forward(100)
            self.left(RIGHT_ANGLE)
            self.move_forward(50)
        self.move_forward(10)
        self.penup()
