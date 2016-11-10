require 'rails_helper'

RSpec.describe "User can delete posts" do
  let!(:user) { create :user }
  before(:each) { sign_in user }

  context "Delete exist post" do
    let!(:post) { create :post, user: user }

    before(:each) do
      visit posts_path
      click_on "Delete"
    end

    it "redirect to posts page" do
      expect(page.current_path).to eq posts_path
    end

    it "The post has been deleted" do
      expect(Post.exists?(post.id)).to eq false
    end
  end

  context "Delete not exist post" do
    let!(:post) { create :post }

    before(:each) do
      visit posts_path
      post.destroy!
      click_on "Delete"
    end

    it "redirect to 404 page" do
      expect(page).to have_content "404"
    end
  end
end
