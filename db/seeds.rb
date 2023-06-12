# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
WorkoutDay.destroy_all
Day.destroy_all
Week.destroy_all
Program.destroy_all
Workout.destroy_all

puts "Workout Seeding..."
workout1 = Workout.create!(name: "Push Ups", description: "Push ups are a great way to build upper body strength and can be done anywhere.", difficulty: "Beginner", video_url: "https://www.youtube.com/watch?v=IODxDxX7oi4", img_url: "https://i.imgur.com/1ZUjQZv.png")
workout2 = Workout.create!(name: "Squats", description: "Squats are a great way to build lower body strength and can be done anywhere.", difficulty: "Beginner", video_url: "https://www.youtube.com/watch?v=QKKZ9AGYTi4", img_url: "https://i.imgur.com/1ZUjQZv.png")
workout3 = Workout.create!(name: "Pull Ups", description: "Pull ups are a great way to build upper body strength and can be done anywhere.", difficulty: "Beginner", video_url: "https://www.youtube.com/watch?v=QKKZ9AGYTi4", img_url: "https://i.imgur.com/1ZUjQZv.png")
workout4 = Workout.create!(name: "Lunges", description: "Lunges are a great way to build lower body strength and can be done anywhere.", difficulty: "Beginner", video_url: "https://www.youtube.com/watch?v=QKKZ9AGYTi4", img_url: "https://i.imgur.com/1ZUjQZv.png")
workout5 = Workout.create!(name: "Dips", description: "Dips are a great way to build upper body strength and can be done anywhere.", difficulty: "Beginner", video_url: "https://www.youtube.com/watch?v=QKKZ9AGYTi4", img_url: "https://i.imgur.com/1ZUjQZv.png")

puts "Program Seeding..."
program = Program.create(name: "12 week gym program", content: "This program is designed to help you get started with your fitness journey.", price: 89)

puts "Program Week Seeding..."
12.times do |i|
    Week.create(week_number: i + 1, description: "Intro into the gym.", program: program)
end

puts "Program Week Days Seeding..."
descriptions = ["Lower body A", "Upper body A", "Lower body B", "Upper body B", "Glute focus"]

Week.all.each do |week|
    5.times do |i|
        Day.create(day_number: i + 1, description: descriptions[i], week: week)
    end
end

puts "Workout Days Seeding..."
days = Day.all

WorkoutDay.create(workout: workout1, day: days[0])
WorkoutDay.create(workout: workout2, day: days[0])
WorkoutDay.create(workout: workout3, day: days[0])

WorkoutDay.create(workout: workout1, day: days[1])
WorkoutDay.create(workout: workout4, day: days[1])
WorkoutDay.create(workout: workout5, day: days[1])

puts "Seeding done."
