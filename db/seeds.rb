# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "Blog entry #{blog}",
    body: " Seska: I won't play these games with the trick of light.  The Doctor: Sticks and stones won't break my bones, so you can imagine how I feel about being called names.
 Tom Paris: Well, Harry and I wanted to explore the station. We wanted to broaden our understanding of alien cultures and...  Captain Janeway: Skip the recruiting speech, you were looking for a bar.
 The Doctor: Seven of Nine, how's my favorite Borg today?  Seven of Nine: Annoyed.
 Lieutenant Worf: Nepo!  Capt. Picard: This is mutiny!
 [In reference to the Qomar]  Tuvok: They are interfering with normal ship business.  Captain Janeway: Since when has business on this ship ever been normal?
"
  )
end

puts "Created 10 blog posts"

5.times do |skill|
  Skill.create!(
  title: "Rails #{skill}",
  percent_utilized: rand(100)
  )
end

puts "Created 5 skills"

9.times do |port|
  Portfolio.create!(
    title: "Portfolio item #{port}",
    subtitle: "Created for xyz",
    body: " Seska: I won't play these games with the trick of light.  The Doctor: Sticks and stones won't break my bones, so you can imagine how I feel about being called names.
 Tom Paris: Well, Harry and I wanted to explore the station. We wanted to broaden our understanding of alien cultures and...  Captain Janeway: Skip the recruiting speech, you were looking for a bar.
 The Doctor: Seven of Nine, how's my favorite Borg today?  Seven of Nine: Annoyed.
 Lieutenant Worf: Nepo!  Capt. Picard: This is mutiny!
 [In reference to the Qomar]  Tuvok: They are interfering with normal ship business.  Captain Janeway: Since when has business on this ship ever been normal?
",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 portfolio items created"
