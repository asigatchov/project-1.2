# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times { |n|
    
    value = ""
    100.times { 
        rand(30).times{value << ((rand(2)==1?65:97) + rand(25)).chr}
        value << ' '
    }    
    

    Article.create(title: "Статья номер #{n}", body: value )

}