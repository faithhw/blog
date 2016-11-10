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
    context "Not logged in user" do
      context "Edit post" do
        before(:each) do
          post = create :post
          get edit_post_path(post)
        end

        it { expect(response.status).to eq 302 }
      end
    end

    context "Logged in user" do
      let!(:user) { create :user }
      before(:each) { sign_in user }

      context "Edit not own post" do
        before(:each) do
          post = create :post
          get edit_post_path(post)
        end

        it { expect(response.status).to eq 401 }
      end

      context "Edit own post" do
        before(:each) do
          post = create :post, user: user
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
end
