require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before :each do
      get '/users/:user_id/posts/'
    end

    it 'return http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render index' do
      expect(response).to render_template(:index)
    end

    it 'should include correct placeholder' do
      expect(response.body).to include("Here are ALL Posts for a given user you are in '/users/user_id/posts'")
    end
  end

  describe 'Get / show' do
    before :each do
      get '/users/:user_id/posts/:id'
    end

    it 'return http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render show' do
      expect(response).to render_template(:show)
    end

    it 'should include correct placeholder' do
      expect(response.body).to include("Here is a single Post for a given user you are in '/users/user_id/posts'")
    end
  end
end
