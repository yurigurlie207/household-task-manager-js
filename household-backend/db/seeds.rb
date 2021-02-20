# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#For the purposes of this assignment, I'll just have two main tasks and all the subtasks assigned to either of these


#Two Tasks
#1 Clean House
#2 Misc
task1 = Task.new(title: "Clean House")
task2 = Task.new(title: "Misc")

#Subtasks assigned to task1
subtask1 = Subtask.new(title: "clean bathroom")
subtask1.task = task1
subtask2 = Subtask.new(title: "do dishes")
subtask2.task = task1
subtask3 = Subtask.new(title: "vaccuum living room")
subtask3.task = task1
subtask4 = Subtask.new(title: "sweep driveway")
subtask4.task = task1
subtask5 = Subtask.new(title: "vaccuum bedroom")
subtask5.task = task1
subtask6 = Subtask.new(title: "clean kitchen space")
subtask6.task = task1

#Subtasks assigned to task2
subtask7 = Subtask.new(title: "power wash house")
subtask7.task = task2
subtask8 = Subtask.new(title: "mow lawn")
subtask8.task = task2
subtask9 = Subtask.new(title: "cook breakfast")
subtask9.task = task2
subtask10 = Subtask.new(title: "cook lunch")
subtask10.task = task2
subtask11 = Subtask.new(title: "cook dinner")
subtask11.task = task2
subtask12 = Subtask.new(title: "grocery shop")
subtask12.task = task2
subtask13 = Subtask.new(title: "set up yardsale")
subtask13.task = task2
subtask14 = Subtask.new(title: "marie-kondo kithen space")
subtask14.task = task2
subtask15 = Subtask.new(title: "rake leaves")
subtask15.task = task2


#Three Users - Mom Dad Daughter
mom = User.new(username: "Mom")
dad = User.new(username: "Dad")
daughter = User.new(username: "Daughter")


#A task with all users assigned
usertask1 = UserTask.new
usertask1.user = mom
usertask1.subtask = subtask9

usertask2 = UserTask.new
usertask2.user = dad
usertask2.subtask = subtask9

usertask3 = UserTask.new
usertask3.user = daughter
usertask3.subtask = subtask9

#a few mom only tasks
usertask4 = UserTask.new
usertask5 = UserTask.new
usertask4.user = mom
usertask4.subtask = subtask5
usertask5.user = mom
usertask5.subtask = subtask12

#a few dad only tasks
usertask6 = UserTask.new
usertask7 = UserTask.new
usertask8 = UserTask.new
usertask6.user = dad
usertask7.user = dad
usertask8.user = dad
usertask6.subtask = subtask7
usertask7.subtask = subtask8
usertask8.subtask = subtask11




