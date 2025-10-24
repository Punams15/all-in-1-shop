require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "GET /products/new" do
    it "redirects unauthenticated users to login" do
      get new_product_path
      expect(response).to redirect_to(new_user_session_path)
    end
  end

  describe "POST /products" do
    it "redirects unauthenticated users to login" do
      post products_path, params: {
        product: {
          name: "Test Product",
          description: "Test Description",
          price: 10.0
        }
      }
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end

