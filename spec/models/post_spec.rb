require 'rails_helper'

RSpec.describe Post, type: :model do
  before :each do
    @author = User.new(name: 'RashidMenhas', photo: 'https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/3cIZo9bfq14o3zy3JsPG7r/95779d9ecb6ba5eeb6005a9482bcc3d0/GettyImages-1209452765.jpg?w=1500&h=680&q=60&fit=fill&f=faces&fm=jpg&fl=progressive&auto=format%2Ccompress&dpr=1&w=1000&h=',
                       bio: 'Full-Stack Software Developer')
    @post = Post.new(author: @author, title: 'Post For Testing', text: 'This post is for testing')
  end

  it 'title should be not null' do
    @post.title = nil
    expect(@post).to_not be_valid
  end

  it 'title should not be empty' do
    @post.title = ''
    expect(@post).to_not be_valid
  end

  it 'title should be a maximum of 250 characters' do
    @post.title =
      'Andor takes Star Wars in a completely new direction than we’ve ever seen before.
    Cassian’s origin story opens not with talk of Jedi and Sith, or a civil war between the Empire and the Rebellion,
    but with a common crook who’s down on his luck and desperate. The opening minutes that play like a neo-noir
    crime thriller straight out of Blade Runner soon give way to a very grounded story about the folks you don’t
    normally see in a Star Wars movie, including the blue collar workers who keep the wheels turning on the Empire’s
    corporate interests.'

    expect(@post).to_not be_valid
  end

  it 'Has comments_counter value is 0 by default' do
    expect(@post.comments_counter).to eq 0
    expect(@post).to be_valid
  end

  it 'Has its likes_counter value is 0 by default' do
    expect(@post.likes_counter).to eq 0
    expect(@post).to be_valid
  end

  it 'Has its comments_counter value greater then or equal to 0' do
    @post.comments_counter = -10
    expect(@post).to_not be_valid
  end

  it 'Has its likes_counter value greater then or equal to 0' do
    @post.likes_counter = -10
    expect(@post).to_not be_valid
  end

  it 'Has the recent 5 comments after it creates 10 comments' do
    10.times { |time| Comment.create(author: @author, post: @post, text: "Test comment number #{time + 1}") }
    expect(@post.recent_five.length).to eq 5

    recent_comment_text = @post.recent_five.first.text
    expect(recent_comment_text).to match 'Test comment number 10'
  end

  it 'Can not update posts_counter since its a private method' do
    expect(@post).to_not respond_to(:update_posts_counter)
  end
end
