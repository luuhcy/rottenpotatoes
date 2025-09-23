# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Movie.create(title: "O Poderoso Chefão", rating: "R", release_date: "1972-03-24")
Movie.create(title: "Titanic", rating: "PG-13", release_date: "1997-12-19")
Movie.create(title: "Matrix", rating: "R", release_date: "1999-03-31")
