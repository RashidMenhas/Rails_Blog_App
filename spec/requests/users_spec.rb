require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users/'
      expect(response).to have_http_status(:success)
    end

    it 'should render index' do
      get '/'
      expect(response).to render_template(:index)
    end

    it 'should include correct placeholder' do
      get '/'
      expect(response.body).to include("Here is a list of ALL Users, you are in '/' or '/users'")
    end
  end

  describe 'GET /show' do
    before :each do
      get '/users/:id'
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should return show ' do
      expect(response).to render_template(:show)
    end

    it 'should include correct placeholder' do
      expect(response.body).to include("Here is a single User, you are in '/users/id'")
    end
  end
end
