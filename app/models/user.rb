class User < ApplicationRecord
	enum gender: [:male, :female]
	enum role: [:client, :worker]
	has_many :locations
	has_many :addresses, through: :locations
end
