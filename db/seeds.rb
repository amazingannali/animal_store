# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Note.all.delete_all
Cat.all.delete_all 


@i = 1 


5.times do
  @user = User.create(
    email: "test#{@i}@test.com",
    password: "password",
    first: "test#{@i}",
    last: "testing#{@i}",
    image: "https://images.unsplash.com/photo-1618826411640-d6df44dd3f7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2F0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
  )
  @i += 1

  10.times do
    @cat = Cat.create(
      name: Faker::Creature::Cat.name,
      breed: Faker::Creature::Cat.breed,
      registry: Faker::Creature::Cat.registry,
      avatar: Faker::Avatar.image(slug: 'cat', size: '100x400', format: 'png', set: 'set4'), 
      user_id: @user.id
    )

  end 
end