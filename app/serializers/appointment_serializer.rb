class AppointmentSerializer < ActiveModel::Serializer

	attributes :id, :client_id, :worker_id, :service_id, :location_id

	def client_id
  	object.client_id
  end
  
  def worker_id
  	object.worker_id
  end

  def service_id
  	object.service_id
  end

	def location_id
  	object.location_id
  end  

end