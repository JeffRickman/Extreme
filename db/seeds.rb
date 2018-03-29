# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  testprograms = Program.create([
                { name: 'test1'}, {name: 'test2'} ])



  testevents = Programevents.create(name: 'event1', programs: programs.first)


   activities = Activity.create([
                { title: 'The first activity' },
                { description: 'Indoor soccer'},
                { activity_type: 'game'},
                { details: 'A full set of instructions of how the activity works'}
                ])




