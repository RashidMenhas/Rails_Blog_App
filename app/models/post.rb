class Post < ApplicationRecord
  after_save :update_posts_counter
  belongs_to :author, class_name: 'User'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def recent_five
    comments.order(created_at: :desc).limit(5)
  end

  private

  def update_posts_counter
    author.update(posts_counter: author.posts.all.length)
  end
end
