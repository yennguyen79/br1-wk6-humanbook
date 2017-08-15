require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
   describe "valid user" do 
     before do 
       @user = User.create name: "Adam", email: "adam@gmail.com", password: "2346"
      end

      it "kiem tra password co dung hay khong" do 
        expect(@user.password).to eq "2346"
      end  

      it "kiem tra ten" do
        expect(@user.name).to eq "Adam"
        end
    end 
end
