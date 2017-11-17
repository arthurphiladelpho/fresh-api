require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	let(:new_user){User.create!(name:"newUser")}

	describe "GET #index" do
		it "returns http success" do
			get :index
			expect(response).to have_http_status(:success)
		end
	end

	describe "POST #create" do
		it "returns http redirect" do
			get :create, user: new_user
			expect(response).to have_http_status(:redirect)
		end
		it "creates a new user" do
			expect{
				post :create, user: new_user
			}.to change(User, :count).by(1)
		end
	end	

	describe "DELETE #destroy" do
		it "deletes the user" do
			delete :destroy, {id: new_user.id}
			check = User.where({id: new_user.id}).size
			expect(check).to eq 0
		end
	end

end