class User < ApplicationRecord

  validates :name, presence: true
  validates :posts_counter, numericality: { only_integer: true}, comparison:{ greater_than_or_equal_to: 0}

  has_many :posts, foreign_key: 'author_id', dependent: :destroy
  has_many :comments, foreign_key: 'author_id', dependent: :destroy
  has_many :likes, foreign_key: 'author_id', dependent: :destroy

  def recent_three
    posts.order(created_at: :desc).limit(3)
  end
end
