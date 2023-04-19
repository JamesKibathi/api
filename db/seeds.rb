# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create sample Stream records
Stream.create(name: 'Science')
Stream.create(name: 'Commerce')
Stream.create(name: 'Arts')


# Create sample Student records
Student.create(name: 'John Doe', email: 'john@example.com', stream: Stream.find_by(name: 'Science'))
Student.create(name: 'Jane Doe', email: 'jane@example.com', stream: Stream.find_by(name: 'Commerce'))
Student.create(name: 'Bob Smith', email: 'bob@example.com', stream: Stream.find_by(name: 'Arts'))


    