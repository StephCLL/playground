from tkinter import *
from tkinter import messagebox


def is_moose():
    entry = favorite_animal_entry.get()
    entry = entry.lower()
    if entry == "moose":
        canvas.create_image(200,200, image=moose_img)
        messagebox.showinfo(title="Awesome!", message="Moose is cutest")
    else:
        messagebox.showinfo(title="Error", message="Please type in moose")


window = Tk()
window.title("Animal Survey")
window.config(padx=50, pady=50)

canvas = Canvas(width=400, height=400)
moose_img = PhotoImage(file="Moose_superior.png")
animal_img = PhotoImage(file="animal.png")
canvas.create_image(200, 200, image=animal_img)
canvas.grid(row=0, column=1)

favorite_animal_label = Label(text="What is your favorite animal? ")
favorite_animal_label.grid(row=1, column=0)
favorite_animal_entry = Entry(width=35)
favorite_animal_entry.grid(row=1, column=1)
favorite_animal_entry.focus()

q1_animal_label = Label(text="Why do you like this animal? ")
q1_animal_label.grid(row=2, column=0)
q1_animal_entry = Entry(width=35)
q1_animal_entry.grid(row=2, column=1)

q2_animal_label = Label(text="What is your favorite feature? ")
q2_animal_label.grid(row=3, column=0)
q2_animal_entry = Entry(width=35)
q2_animal_entry.grid(row=3, column=1)

button = Button(text="Next", width=20, command=is_moose)
button.grid(row=1, column=3)

window.mainloop()
