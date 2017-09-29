# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


tweets = [
 	{message:  'First tweet '},
	{message:  'second tweet '},
	{message:  'Cakes and bunnies '},
	{message:  'I love cake '},
	{message:  'Potatoes are great'},
	{message:  'Crunchy leaves are fun to step on '},
	{message:  'I have pizza for dinner '},
	{message:  'Yellow is a great color '},
	{message:  'Pineapples are sweet '},
	{message:  'This is how you seed '}

]


Tweet.create(tweets);
