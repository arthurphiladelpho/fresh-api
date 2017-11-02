class UserSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :first_name
  def first_name
  	object.first_name
  end
  
  def created_at
  	object.created_at.strftime('%B, %d, %Y')
  end

end
