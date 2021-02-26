# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#For the purposes of this assignment, I'll just have two main tasks and all the subtasks assigned to either of these



UserTask.destroy_all
Subtask.destroy_all
Task.destroy_all
User.destroy_all

#Two Tasks
#1 Clean House
#2 Misc
task1 = Task.create(title: "Clean House")
task2 = Task.create(title: "Misc")

#Subtasks assigned to task1
subtask1 = Subtask.create(title: "clean bathroom", estimated_duration: "60 minutes")
subtask1.task = task1
subtask1.save
subtask2 = Subtask.create(title: "do dishes", estimated_duration: "30 minutes")
subtask2.task = task1
subtask2.save
subtask3 = Subtask.create(title: "vaccuum living room", estimated_duration: "15 minutes")
subtask3.task = task1
subtask3.save
subtask4 = Subtask.create(title: "sweep driveway", estimated_duration: "15 minutes")
subtask4.task = task1
subtask4.save
subtask5 = Subtask.create(title: "vaccuum bedroom", estimated_duration: "10 minutes")
subtask5.task = task1
subtask5.save
subtask6 = Subtask.create(title: "clean kitchen space", estimated_duration: "60 minutes")
subtask6.task = task1
subtask6.save

#Subtasks assigned to task2
subtask7 = Subtask.create(title: "power wash house", estimated_duration: "90 minutes")
subtask7.task = task2
subtask7.save
subtask8 = Subtask.create(title: "mow lawn", estimated_duration: "30 minutes")
subtask8.task = task2
subtask8.save
subtask9 = Subtask.create(title: "cook breakfast", estimated_duration: "20 minutes")
subtask9.task = task2
subtask9.save
subtask10 = Subtask.create(title: "cook lunch", estimated_duration: "30 minutes")
subtask10.task = task2
subtask10.save
subtask11 = Subtask.create(title: "cook dinner", estimated_duration: "45 minutes")
subtask11.task = task2
subtask11.save
subtask12 = Subtask.create(title: "grocery shop", estimated_duration: "90 minutes")
subtask12.task = task2
subtask13 = Subtask.create(title: "set up yardsale", estimated_duration: "90 minutes")
subtask13.task = task2
subtask13.save
subtask14 = Subtask.create(title: "marie-kondo kithen space", estimated_duration: "180 minutes")
subtask14.task = task2
subtask14.save
subtask15 = Subtask.create(title: "rake leaves", estimated_duration: "30 minutes")
subtask15.task = task2
subtask15.save


#Three Users - Mom Dad Daughter
mom = User.create(username: "Mom")
dad = User.create(username: "Dad")
daughter = User.create(username: "Daughter")


#A task with all users assigned
usertask1 = UserTask.new
usertask1.user = mom
usertask1.subtask = subtask9
usertask1.assigned_by = "Mom"
usertask1.save

usertask2 = UserTask.new
usertask2.user = dad
usertask2.subtask = subtask9
usertask2.assigned_by = "Mom"
usertask2.save

usertask3 = UserTask.new
usertask3.user = daughter
usertask3.subtask = subtask9
usertask3.assigned_by = "Mom"
usertask3.save

#a few mom only tasks
usertask4 = UserTask.new
usertask5 = UserTask.new
usertask4.user = mom
usertask4.subtask = subtask5
usertask4.assigned_by = "Mom"
usertask5.user = mom
usertask5.subtask = subtask12
usertask5.assigned_by = "Mom"
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
usertask6.assigned_by = "Mom"
usertask7.assigned_by = "Mom"
usertask8.assigned_by = "Mom"
usertask6.save
usertask7.save
usertask8.save



