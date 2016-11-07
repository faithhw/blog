require 'rails_helper'

RSpec.describe "User can create comment" do
  let!(:post) { create :post}

  before(:each) do
    visit post_path(post)
  end

  context "User submit normal comment" do
    let!(:comment) { 'Hello world comment hehe' }

    before(:each) do
      fill_in('comment[content]', with: comment)
      click_on "Submit"
    end

    it "reload post page" do
      expect(page.current_path).to eq post_path(post)
    end

    it "show the new comment" do
      expect(page).to have_content comment
    end
  end

  context "User submit too short comment" do
    let!(:comment) { 'ab' }

    before(:each) do
      fill_in('comment[content]', with: comment)
      click_on "Submit"
    end

    it "reload post page" do
      expect(page.current_path).to eq comments_path
    end

    it "show error" do
      expect(page).to have_content 'Content is too short (minimum is 5 characters)'
    end
  end

  context "User submit dangerous comment" do
    let!(:comment) { "<script>alert('a')</script>" }

    before(:each) do
      fill_in('comment[content]', with: comment)
      click_on "Submit"
    end

    it "reload post page" do
      expect(page.current_path).to eq post_path(post)
    end

    it "show error" do
      expect(page).to have_content comment
    end
  end
end
