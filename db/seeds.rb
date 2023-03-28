# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Pakista.')

first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author: first_user, title: 'Hi', text: 'This is my second post')
third_post = Post.create(author: first_user, title: 'Greeting', text: 'This is my third post')
fourth_post = Post.create(author: first_user, title: 'BaBa', text: 'This is my fourth post')


Comment.create(post: first_post, author: first_user, text: 'Hi borthors! cool' )
Comment.create(post: second_post, author: first_user, text: 'Hi Tom! Greate' )
Comment.create(post: third_post, author: first_user, text: 'Hi Rashid! Awesome' )
Comment.create(post: fourth_post, author: first_user, text: 'Hi sami! Good looks' )
Comment.create(post: first_post, author: first_user, text: 'Hi saboor! amazing' )
Comment.create(post: second_post, author: first_user, text: 'Hi Tom! Mashaallah' )
Comment.create(post: third_post, author: first_user, text: 'Hi Royal! fantasy' )
Comment.create(post: fourth_post, author: first_user, text: 'Hi Tom! nice' )
