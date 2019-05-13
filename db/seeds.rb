# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


group1 = Group.create!(name: "Group 1")

group2 = Group.create(name: "Group  2")

u1 = User.create!(name: "User 1")
u2 = User.create(name: "User 2")
u3 = User.create(name: "User 3")
u4 = User.create(name: "User 4")

g1 = Ghost.create!(name: "Ghost 1")
g2 = Ghost.create(name: "Ghost 2")
g3 = Ghost.create(name: "Ghost 3")
g4 = Ghost.create(name: "Ghost 4")

group1.users << u1
group1.users << u2
group1.users << u3
group1.ghosts << g1
group1.ghosts << g2
group1.ghosts << g3

group2.users << u4
group2.users << u1
group2.ghosts << g4
group2.ghosts << g1
# gm = GroupMember.create!(group:  group1)
