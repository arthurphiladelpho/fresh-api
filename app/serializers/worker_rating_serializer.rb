class WorkerRatingSerializer < ActiveModel::Serializer
  
  attributes :id, :worker_id, :client_id, :rating, :comments

	def worker_id
  	object.worker_id
  end
  
  def client_id
  	object.client_id
  end

  def rating
  	object.rating
  end

	def comments
  	object.comments
  end  

end