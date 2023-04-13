require 'rails_helper'

RSpec.describe 'Post Index', type: :feature do
  before :each do
    @avatar_pic = 'https://whatsondisneyplus.com/wp-content/uploads/2022/09/andor-avatar.png'
    @author = User.create(name: 'Cassian Andor',
                          photo: @avatar_pic,
                          bio: 'Rebel fighter from Kenari.An accomplished Alliance Intelligence officer
                          with combat field experience.')
    @first_post = Post.create(author: @author, title: 'Selam from', text: 'This is my first post')
    @second_post = Post.create(author: @author, title: 'Hello there!',
                               text: 'This is ObiWans\' message: Don\'t let the Empire win')

    @com1 = Comment.create(author: @author, post: @second_post, text: 'Thank you for your support 😊')
    @com2 = Comment.create(author: @author, post: @second_post,
                           text: 'Hello there Cassian, this Dero I am watching you')
    @com3 = Comment.create(author: @author, post: @second_post, text: 'Spend the credits wisely :|')

    25.times do |_n|
      Post.create(author: @author, title: 'Selam from', text: 'This is my first post')
    end

    visit user_path(@author)

    click_on @author.name
    click_link 'See all posts'
  end

  it 'returns paginated posts' do
    expect(page).to have_http_status(200)
    expect(page.body).to include('This is my first post')
  end
  it 'shows the username of the user' do
    expect(page).to have_content(@author.name)
  end
  it 'shows the user photo' do
    expect(page.body).to include(@avatar_pic)
  end

  it 'shows number of posts user has written' do
    expect(page.body).to include('Number of posts: 2')
  end

  it 'shows number of comments a post has' do
    expect(page.body).to include('Comments: 3')
  end

  it 'shows number of likes a post has' do
    expect(page.body).to include('Likes: 0')
  end

  it 'shows the title of the post' do
    expect(page).to have_content(@second_post.title)
  end

  it 'shows part of a post body (This is ObiWans\' message: Don\'t let the Empire win)' do
    expect(page).to have_content(@second_post.text)
  end

  it 'shows the comments on a post like (Thank you for your support)' do
    expect(page).to have_content(@com1.text)
    expect(page).to have_content(@com2.text)
    expect(page).to have_content(@com3.text)
  end

  # it 'Redirect to post show page when a post is clicked' do
  #   click_link @first_post.title
  #   expect(current_path).to match user_post_path(@author, @first_post)
  # end
end
