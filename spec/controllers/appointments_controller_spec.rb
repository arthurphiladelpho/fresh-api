require 'rails_helper'

RSpec.describe AppointmentsController, type: :controller do
	let(:new_appointment){Appointment.create!(service_id: 1)}

	describe "GET #index" do
		it "returns http success" do
			get :index
			expect(response).to have_http_status(:success)
		end
	end

	describe "POST #create" do
		it "returns http redirect" do
			get :create, appointment: new_appointment
			expect(response).to have_http_status(:redirect)
		end
		it "creates a new appointment" do
			expect{
				post :create, appointment: new_appointment
			}.to change(Appointment, :count).by(1)
		end
	end	

	describe "DELETE #destroy" do
		it "deletes the client appointment" do
			delete :destroy, {id: new_appointment.id}
			check = Appointment.where({id: new_appointment.id}).size
			expect(check).to eq 0
		end
	end

	describe "PUT #update"
		it "updates post with expected attributes" do
			new_service_id = 2
			put :update, id: new_appointment.id, appointment: {service_id: new_service_id}
			updated_appointment = assigns(:appointment)
			expect(updated_appointment.id).to eq new_appointment.id
		end
		it "returns http redirect" do
			put :update, id: new_appointment.id, appointment: {service_id: new_service_id}
			expect(response).to have_http_status(:redirect)
		end
	end
end
