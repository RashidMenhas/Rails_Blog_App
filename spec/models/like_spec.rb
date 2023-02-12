require 'rails_helper'

RSpec.describe Like, type: :model do
  before :each do
    @author = User.new(name:'Menhas', photo:'https://res.cloudinary.com/highereducation/images/w_1024,h_683,c_scale/f_auto,q_auto/v1669994566/BestColleges.com/web-developer-vs-software-engineer-man-with-laptop/web-developer-vs-software-engineer-man-with-laptop-1024x683.jpg', bio:'Full-stack software developer')

    @post = Post.new(author: @author, title: 'Post for testing', text: 'This post is for testing')

    @like = Like.create(author: @author, post: @post)
  end

  it 'can not update likes_counter since its  a private method ' do
    expect(@like).to_not respond_to(:update_likes_counter)
  end

  it'will have the posts like_counter through update_comment_counter' do
    expect(@post.likes_counter).to eq 1
  end
end
