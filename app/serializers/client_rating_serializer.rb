class ClientRatingSerializer < ActiveModel::Serializer
  
  attributes :id, :client_id, :worker_id, :rating, :comments

	def client_id
  	object.client_id
  end
  
  def worker_id
  	object.worker_id
  end

  def rating
  	object.rating
  end

	def comments
  	object.comments
  end  

end