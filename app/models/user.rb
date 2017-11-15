require 'bcrypt'
class User < ApplicationRecord
  has_secure_password
  enum gender: %i[male female]
  enum role: %i[client worker]
  has_many :locations
  has_many :addresses, through: :locations
  has_many :client_ratings, class_name: 'ClientRatings', foreign_key: :client_id
  has_many :worker_rated, class_name: 'ClientRatings', foreign_key: :worker_id
  has_many :worker_ratings, class_name: 'WorkerRatings', foreign_key: :worker_id
  has_many :client_rated, class_name: 'WorkerRatings', foreign_key: :client_id
end
