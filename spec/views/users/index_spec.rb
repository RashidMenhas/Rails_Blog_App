require 'rails_helper'
RSpec.describe 'User index', type: :feature do
  before :each do
    @avatar_pic = 'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2022/10/Andor_Luthen-Rael.png?fit=2554,1642&amp;quality=60&amp;strip=all&amp;ssl=1'
    @author = User.create(name: 'Luthen Rael',
                          photo: @avatar_pic,
                          bio: 'A mysterious man with an eye for valuable finds, Luthen Rael will go to great lengths
                          and traverse the galaxy to locate the pieces he needs to achieve his goals.')
    visit users_path
  end
  it 'shows user name' do
    expect(page).to have_content(@author.name)
  end
  it 'shows the user photo' do
    image = page.all('img')
    expect(image.size).to eq 1
  end
  it 'shows number of posts user has written' do
    expect(page.body).to include('Number of posts: 0')
  end
  it 'redirects to user show page when a user is clicked' do
    click_link @author.name
    expect(current_path).to match user_path(@author)
  end
end
