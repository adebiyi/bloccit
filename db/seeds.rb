include RandomData

# Create Posts
50.times do

  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )

end
posts = Post.all

# Create Comments

100.times do
  Comment.create!(

    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

# Add a post with a unique title and body to seeds.rb
p = Post.find_or_create_by!(
  title: "My Fair Lady",
  body: "The rain in Spain stays mainly in a plain."
)

# Add a unique comment
Comment.find_or_create_by!(
  post: p,
  body: "I think she's got it."
)
