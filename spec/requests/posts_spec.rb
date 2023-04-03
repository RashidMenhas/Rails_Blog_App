require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /index" do
    it 'return http success' do
      get '/posts/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'Get / show' do
    it 'return http success' do 
      get '/posts/show'
      expect(response).to have_http_status(:success)
    end
  end
end