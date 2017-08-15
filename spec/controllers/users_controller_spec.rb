require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  context "user is logged i"
    describe "GET #index" do
      it "return a success response" do
        @user = User.create name: "Adam", email: "adam@gmail.com", password: "2346"
        get :index, params: {}, session: {user_id: @user.id}
        expect(response).to be_success
      end
  end      
end

  # context "user is Not logged in"
  #   describe "GET #index" do
  #     it "rederects to the home page" do 
  #       get :index, params: {}, session: {user_id: @user.id}
  #       expect(response).to redirect_to(root_path)
  #     end
  # end 

