
Resolution.destroy_all
User.destroy_all
Tag.destroy_all
ResolutionTag.destroy_all
Heart.destroy_all


[1,2,3,4,5].each do |num|
  User.create(
    username:"user#{num}",
    password_digest: BCrypt::Password.create("password#{num}")
  )
end

Resolution.create(title: "Wear less makeup", description: "this is a description", end_date: Date.new(2018, 12, 31), done: false)
Resolution.create(title: "Lose weight", description: "this is a description", end_date: Date.new(2018, 12, 10), done: false)
Resolution.create(title: "Be kind to others", description: "this is a description", end_date: Date.new(2018, 1, 31), done: false)

Heart.create(user_id: 1, resolution_id: 3)
Heart.create(user_id: 1, resolution_id: 2)
Heart.create(user_id: 2, resolution_id: 3)
Heart.create(user_id: 2, resolution_id: 1)

tagarray = ["Health", "Mind & Spirit", "Travel", "Relationships", "Short-term", "Long-term", "Happiness", "Fitness", "Career", "Family", "Hobby", "Food & Drink", "Finances", "Education", "Reading"]
tagarray.each do |tag_name|
  Tag.create(name: tag_name)
end

ResolutionTag.create(resolution_id: 1, tag_id: 5)
ResolutionTag.create(resolution_id: 2, tag_id: 1)
ResolutionTag.create(resolution_id: 2, tag_id: 8)
ResolutionTag.create(resolution_id: 3, tag_id: 4)
ResolutionTag.create(resolution_id: 3, tag_id: 7)

puts "done!"
