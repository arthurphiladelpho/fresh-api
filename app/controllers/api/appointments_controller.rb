class Api::AppointmentsController < ApiController

	before_action :authenticated?

	def index
  	appointments = Appointment.all
  	render json: appointments, each_serializer: AppointmentSerializer
  end

  def create
  	appointment = Appointment.new(appointment_params)
  	if appointment.save
  		render json: appointment
  	else
  		render json: {errors: appointment.errors.full_messages}, status: :unprocessable_entity
  	end
  end

  def destroy
  	begin
      appointment = Appointment.find(params[:id])
      appointment.destroy
      render json: {}, status: :no_content
    rescue ActiveRecord::RecordNotFound
      render :json => {}, :status => :not_found
    end
  end

  def update
  	appointment = Appointment.find(params[:id])
    if appointment.update(appointment_params)
      render json: appointment
    else
      render json: { errors: appointment.errors.full_messages }, status: :unprocessable_entity
    end
 	end

 	private
  
  def appointment_params
    params.require(:appointment).permit(:client_id, :worker_id, :service_id, :location_id)
  end


end