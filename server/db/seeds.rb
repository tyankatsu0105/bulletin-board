# frozen_string_literal: true

def create_posts!
  create_item_count = 10
  last_item_id = Post.last&.id || 0

  create_item_count.times do |i|
    Post.create!(
      id: last_item_id + i + 1,
      title: Faker::Food.allergen,
      content: Faker::Food.description,
      category: Post.categories.keys.sample
    )
  end
end

def create_comments!
  create_item_count = 10
  last_item_id = Comment.last&.id || 0

  create_item_count.times do |i|
    Comment.create!(
      id: last_item_id + i + 1,
      post: Post.order('RANDOM()').limit(1)[0],
      content: Faker::Food.description
    )
  end
end

create_posts!
create_comments!
