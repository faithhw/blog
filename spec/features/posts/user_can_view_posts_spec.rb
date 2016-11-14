require 'rails_helper'

RSpec.describe 'User can view posts', type: :feature do
  context "Don't have any post" do
    before(:each) do
      visit posts_path
    end

    it "Display no post message" do
      expect(page).to have_content("No post")
    end
  end

  context "Have one post" do
    let!(:post) { create :post }

    before(:each) do
      visit posts_path
    end

    it "show id, title" do
      expect(page).to have_content(post.title)
      expect(page).to have_content(post.id)
    end

    it "show edit button" do
      expect(page).to have_link("Edit", href: edit_post_path(post))
    end
  end

  context "Have 15 posts" do
    let!(:posts) { create_list :post, 15 }

    before(:each) do
      visit posts_path
    end

    it "show 10 posts in first page" do
      posts[0..9].each do |post|
        expect(page).to have_content(post.title)
        expect(page).to have_content(post.id)
        expect(page).to have_link("Edit", href: edit_post_path(post))
      end
    end

    it "number of posts is 10" do
      expect(page).to have_css('.post-item', count: 10)
    end

    it "have link to next page", run: true do
      expect(page).to have_link("2", href: posts_path(page: 2))
    end
  end
end
