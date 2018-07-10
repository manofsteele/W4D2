# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    cat1 = Cat.create(birth_date: '2010/1/1', color: 'blue', name: 'appacademy', sex: 'M', description: "very cute")
    cat2 = Cat.create(birth_date: '2015/1/1', color: 'red', name: 'battery', sex: 'F', description: "friendly")
    cat3 = Cat.create(birth_date: '2006/1/1', color: 'black', name: 'broadway', sex: 'M', description: "very old")

    


