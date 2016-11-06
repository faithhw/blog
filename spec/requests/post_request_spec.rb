require 'rails_helper'

RSpec.describe 'Post request' do
  describe "GET index" do
    before(:each) { get posts_path }

    it "show all the index page" do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET show" do
    before(:each) do
      post = create :post
      get post_path(post)
    end

    it { expect(response.status).to eq 200 }
  end

  describe "GET edit" do
    context "Edit post exist" do
      before(:each) do
        post = create :post
        get edit_post_path(post)
      end

      it { expect(response.status).to eq 200 }
    end

    context "Edit post not exist" do
      before(:each) do
        get edit_post_path(10)
      end

      it { expect(response.status).to eq 404 }
    end
  end
end
