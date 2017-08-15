require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  context "user is logged in"
    describe "GET #index" do
      it "return a success response" do
        @user = User.create name: "Adam", email: "adam@gmail.com", password: "2346"
        get :index, params: {}, session: {user_id: @user.id}
        expect(response).to be_success
      end
  end      

    describe "GET #index" do
      it "loads all users" do 
        @user = User.create name: "Adam", email: "adam@gmail.com", password: "2346"
        get :index, params: {}, session: {user_id: @user.id}
        expect(assigns(:users)).to eq [@user]
    end
  end
end

