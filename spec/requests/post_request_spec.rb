require 'rails_helper'

RSpec.describe 'Post request' do
  describe "GET index" do
    it "show all the index page" do
      binding.pry
      get "/posts"
      binding.pry

      expect(response).to have_http_status(200)
      binding.pry
    end
  end

  describe "GET show" do
    before(:each) do
      post = create :post
      get "/posts/#{post.id}"
    end

    it { expect(response.status).to eq 200 }
  end

  describe "GET edit" do
    context "Edit post exist" do
      before(:each) do
        post = create :post
        get "/posts/#{post.id}/edit"
      end

      it { expect(response.status).to eq 200 }
    end

    context "Edit post not exist" do
      before(:each) do
        get "/posts/10/edit"
      end

      it { expect(response.status).to eq 404 }
    end
  end
end
