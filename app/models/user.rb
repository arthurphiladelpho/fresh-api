class User < ApplicationRecord
	enum gender: [:male, :female]
	enum role: [:client, :worker]
	has_many :locations
	has_many :addresses, through: :locations
	has_many :client_ratings, :class_name => "ClientRatings", :foreign_key => :client_id
  has_many :worker_ratings, :class_name => "ClientRatings", :foreign_key => :worker_id
end
