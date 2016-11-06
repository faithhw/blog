require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET index" do
    it "assign @post" do
      post = create :post
      get :index
      expect(assigns(:posts)).to eq ([post])
    end
  end

  describe "PUT update" do
    context "Update success" do
      it "redirect to show" do
        post = create :post

        #allow(Post).to receive(:update) { true }
        allow_any_instance_of(Post).to receive(:update) { true }
        #put :update, {:id => post.id, :post => {:title => 'test 123', :content => 'Test 456'}}
        process :update , method: :post, params: { id: post.id, post: { title: 'test 123', content: 'Test 456' } }
        expect(response).to redirect_to(post_path)
      end
    end

    context "Update failed" do
      it "reder edit page" do
        post = create :post

        allow_any_instance_of(Post).to receive(:update) { false }
        process :update, method: :post, params: { id: post.id, post: { title: 'test 123', content: 'test4566' } }
        expect(response).to render_template(:edit)
      end
    end
  end
end
