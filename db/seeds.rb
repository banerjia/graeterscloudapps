# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


retailers = [\
    { name: 'Krogers', uri_string: 'krogers', status: 'arch', created_at: Time.now - 2.years, updated_at: Time.now - 1.week},\
    { name: 'Meijers', uri_string: 'meijers', status: 'actv', created_at: Time.now - 8.months, updated_at: Time.now - 17.days},\
    { name: 'Giant Eagle', uri_string: 'giant-eagle', status: 'actv', created_at: Time.now - 1.years, updated_at: Time.now - 5.week},\
    { name: 'Market Fresh', uri_string: 'market-fresh', status: 'actv', created_at: Time.now - 3.months, updated_at: Time.now - 1.day},\
    { name: 'Remeke', uri_string: 'remeke', status: 'actv', created_at: Time.now - 5.months, updated_at: Time.now - 4.months},\
    { name: 'Home Depot', uri_string: 'home-depot', status: 'rmv', created_at: Time.now - 2.months, updated_at: Time.now - 1.week},\
    { name: 'Winn Dixie', uri_string: 'winn-dixie', status: 'arch', created_at: Time.now - 1.months, updated_at: Time.now - 1.day}\
]

Retailer.delete_all
Retailer.insert_all(retailers)