# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1=Category.create(title:"German", desc:"Language")
c2=Category.create(title:"Italian", desc:"Language")



Note.create(name:"Almanca", info:"wenig: dar, allein: yalnız, leiten,tut : yapmak, wichting: önemli ", category:c1)
Note.create(name:"Almanca", info:"aufstehen: kalkmak", category:c1)
Note.create(name:"Almanca", info:"akkusativ->Ich habe keinen katze dativ->Burak erzählt seinen Brüdern Witze.", category:c2)