1.times do |category|
  Category.create!(
    title: "Vegan"
  )
end

puts "1 Vegan Category created"

1.times do |category|
  Category.create!(
    title: "Recipes"
  )
end

puts "1 Recipes Category created"

12.times do |portfolio|
  Portfolio.create!(
    title: "My Photo #{portfolio}",
    subtitle: "This is my photo body. This is my photo body. This is my photo body. This is my photo body.",
  )
end

puts "9 Portfolio items created"

1.times do |user|
  User.create!(
    name: "Chris Palka Admin",
    email: "test@test.com",
    password: "Password123",
    roles: "site_admin"
  )
end

puts "1 Admin User Created"

3.times do |blog|
	Blog.create!(
		title: "Vegan #{blog}",
		body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
    category_id: Category.first.id
	)
end

puts "3 Vegan Blog posts created"

3.times do |blog|
	Blog.create!(
		title: "Recipe #{blog}",
		body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
    category_id: Category.last.id
	)
end

puts "3 Recipe Blog posts created"
