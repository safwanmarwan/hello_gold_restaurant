# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create([
    {name: 'Restaurant One', dish_id: [1]},
    {name: 'Restaurant Two', dish_id: [1,2]},
    {name: 'Restaurant Three', dish_id: [2,3,4]},
    {name: 'Restaurant Four', dish_id: [5]},
    {name: 'Restaurant Five', dish_id: [1,4]},
    ])
    
Dish.create([
    {name: 'Dish One'},
    {name: 'Dish Two'},
    {name: 'Dish Three'},
    {name: 'Dish Four'},
    {name: 'Dish Five'},
    {name: 'Dish Six'},
    {name: 'Dish Seven'},
    {name: 'Dish Eight'},
    {name: 'Dish Nine'},
    {name: 'Dish Ten'},
    ])