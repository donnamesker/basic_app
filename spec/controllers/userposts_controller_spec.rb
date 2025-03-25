require 'rails_helper'

RSpec.describe UserpostsController, type: :controller do
  render_views

  describe 'POST /userposts' do
    it 'create a new userpost object' do
      post :create, params: {content: 'My first post.'}

      expect(Userpost.count).to eq(1)
    end

    it 'responds with a userpost object' do
      post :create, params: {content: 'My first post.'}

      expected_response = {
        userpost: {
          content: 'My first post.'
          }
      }

      expect(response.body).to eq(expected_response.to_json)
    end
  end
end