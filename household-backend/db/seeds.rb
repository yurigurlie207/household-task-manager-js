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
task1 = Task.create(title: "Clean House")
task2 = Task.create(title: "Misc")

#Subtasks assigned to task1
subtask1 = Subtask.create(title: "clean bathroom")
subtask1.task = task1
subtask2 = Subtask.create(title: "do dishes")
subtask2.task = task1
subtask3 = Subtask.create(title: "vaccuum living room")
subtask3.task = task1
subtask4 = Subtask.create(title: "sweep driveway")
subtask4.task = task1
subtask5 = Subtask.create(title: "vaccuum bedroom")
subtask5.task = task1
subtask6 = Subtask.create(title: "clean kitchen space")
subtask6.task = task1

#Subtasks assigned to task2
subtask7 = Subtask.create(title: "power wash house")
subtask7.task = task2
subtask8 = Subtask.create(title: "mow lawn")
subtask8.task = task2
subtask9 = Subtask.create(title: "cook breakfast")
subtask9.task = task2
subtask10 = Subtask.create(title: "cook lunch")
subtask10.task = task2
subtask11 = Subtask.create(title: "cook dinner")
subtask11.task = task2
subtask12 = Subtask.create(title: "grocery shop")
subtask12.task = task2
subtask13 = Subtask.create(title: "set up yardsale")
subtask13.task = task2
subtask14 = Subtask.create(title: "marie-kondo kithen space")
subtask14.task = task2
subtask15 = Subtask.create(title: "rake leaves")
subtask15.task = task2


#Three Users - Mom Dad Daughter
mom = User.create(username: "Mom")
dad = User.create(username: "Dad")
daughter = User.create(username: "Daughter")


#A task with all users assigned
usertask1 = UserTask.new
usertask1.user = mom
usertask1.subtask = subtask9
usertask1.save

usertask2 = UserTask.new
usertask2.user = dad
usertask2.subtask = subtask9
usertask2.save

usertask3 = UserTask.new
usertask3.user = daughter
usertask3.subtask = subtask9
usertask3.save

#a few mom only tasks
usertask4 = UserTask.new
usertask5 = UserTask.new
usertask4.user = mom
usertask4.subtask = subtask5
usertask5.user = mom
usertask5.subtask = subtask12
usertask4.save
usertask5.save

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
usertask6.save
usertask7.save
usertask8.save



