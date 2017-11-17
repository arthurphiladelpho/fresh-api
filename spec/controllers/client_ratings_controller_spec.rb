require 'rails_helper'

RSpec.describe ClientRatingsController, type: :controller do
	let(:new_rating){ClientRating.create!(rating: 4.0)}

	describe "GET #index" do
		it "returns http success" do
			get :index
			expect(response).to have_http_status(:success)
		end
	end

	describe "POST #create" do
		it "returns http redirect" do
			get :create, rating: new_rating
			expect(response).to have_http_status(:redirect)
		end
		it "creates a new rating" do
			expect{
				post :create, rating: new_rating
			}.to change(ClientRating, :count).by(1)
		end
	end	

	describe "DELETE #destroy" do
		it "deletes the client rating" do
			delete :destroy, {id: new_rating.id}
			check = ClientRating.where({id: new_rating.id}).size
			expect(check).to eq 0
		end
	end
end