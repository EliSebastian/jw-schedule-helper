# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Participants
participants = [
  { name: "Galilea", gender: :female },
  { name: "Sebastian", gender: :male },
  { name: "Alex", gender: :male }
]
participants.each { |participant| Participant.find_or_create_by!(participant) }

# Assignments
assignments = [
  {

    name: "Assignment 1",
    description: "This is the first assignment.",
    allowed_gender: :both
  },
  {
    name: "Assignment 2",
    description: "This is the second assignment.",
    allowed_gender: :male
  },
  {

    name: "Assignment 3",
    description: "This is the third assignment.",
    allowed_gender: :female
  }
]
assignments.each { |assignment| Assignment.find_or_create_by!(assignment) }
