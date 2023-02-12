require 'rails_helper'

RSpec.describe Comment, type: :model do
  before :each do
    @author = User.new(name:'Rashid', photo:'https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/4NAwrInfpEhTT3Kti5eMA6/e5e7a301fc824d01dda224830a065135/GettyImages-1341554760.jpg?w=1500&h=680&q=60&fit=fill&f=faces&fm=jpg&fl=progressive&auto=format%2Ccompress&dpr=1&w=1000&h=', bio:'Full-Stack software developer')

    @post = Post.new(author: @author, title: 'Post for testing', text: 'This post is for test')

    @comment1 = Comment.create(author: @author, post: @post, text: 'Test comment1')
    @comment2 = Comment.create(author: @author, post: @post, text: 'Test comment2')
  end

  it 'can not update comments counter when its a private method' do
    expect(@comment1).to respond_to(:update_comments_counter)
    expect(@comment2).to respond_to(:update_comments_counter)
  end

  it 'will have the post comments_counter through update_comments_counter' do
    expect(@post.comments_counter).to eq 2
  end


end