require 'faker'
puts "hello"
10.times do
   users = User.create(
        first_name: Faker::Name.name,
        last_name: Faker::Name.name,
        email: Faker::Internet.email,
        about: Faker::Lorem.paragraphs,
        password: Faker::Internet.password #=> "Vg5mSvY1UeRg7"
    )
    puts "User created successfully"
    puts "Post creating start"
    posts = Post.create(
    	title: Faker::Lorem.words(number: rand(2..10)),
    	content:Faker::Lorem.words(number: rand(2..10)),
    	user_id: users.id,
        is_publish:Faker::Boolean.boolean #=> true
    	)
    puts "Post created successfully"
    puts "Tag is now creating"
    Tag.create(
    	name: Faker::Name.name,
    	)
    puts "Tag created successfully"
    puts "Comment is now creating"
   comments = Comment.create(
    	fullname: Faker::Name.name,
    	email:Faker::Internet.email,
    	message:Faker::Lorem.paragraphs,
    	status:Faker::Boolean.boolean,
    	post_id: posts.id
    	)
    puts "Comment created successfully"
    puts "Message created successfully"
    messages = Message.create(
    	fullname: Faker::Name.name,
    	email:Faker::Internet.email,
    	content:Faker::Lorem.paragraphs
    	)
    puts "Message successfully created"
    puts "Notification is created"
    arr = [messages, comments].sample
    Notification.create(
    	notificable_id: arr,
    	notificable_type: arr.class.name
    	)
    puts "Notification created successfully"
end