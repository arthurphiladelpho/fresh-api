class User < ApplicationRecord
	enum gender: [:male, :female]
	enum role: [:client, :worker]
end
