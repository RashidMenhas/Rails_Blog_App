class Comment < ApplicationRecord
  after_save :update_comments_counter
  belongs_to :author, class_name: 'User'
  belongs_to :post

  def update_comments_counter
    post.update(comments_counter: post.comments.all.length)
  end
end
