require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Rashid', photo: 'https://www.simplilearn.com/ice9/free_resources_article_thumb/how_to_become_a_software_engineer.jpg', bio: 'Full-Stack Software Developer.') }

  it 'Name should be null' do
    expect(subject).to be_valid
  end

  it 'Is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Has its posts_counter value greater than or equal to 0' do
    subject.posts_counter = -10
    expect(subject).to_not be_valid
  end

  it 'Has its posts_counter value is 0 by default' do
    expect(subject.posts_counter).to eq 0
    expect(subject).to be_valid
  end

  it 'Can select recent 3 posts' do
    expect(subject).to respond_to(:recent_three)
  end

  it 'Has the recent 3 posts after it creates 4 posts' do
    4.times { |time| Post.create(author: subject, title: "Post #{time + 1}", text: 'This is a test post') }
    expect(subject.recent_three.length).to eq 3

    recent_post_title = subject.recent_three.first.title
    expect(recent_post_title).to match 'Post 4'
  end
end
