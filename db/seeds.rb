# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

data = {full_name: 'Dani Noor Himawan', email: 'daninoor@gmail.com', password: 'dani123'}
user = User.create(data)

user = User.first
articles = [
    {title: 'Artikel 1', description: 'Deskripsi artikel 1', user: user},
    {title: 'Artikel 2', description: 'Deskripsi artikel 2', user: user},
    {title: 'Artikel 3', description: 'Deskripsi artikel 3', user: user}
]

user = Article.create(articles)