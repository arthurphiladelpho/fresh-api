class AppointmentSerializer < ActiveModel::Serializer

	attributes :id, :client_id, :worker_id

	def client_id
  	object.client_id
  end
  
  def worker_id
  	object.worker_id
  end

end