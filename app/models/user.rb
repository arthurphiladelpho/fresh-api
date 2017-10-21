class User < ApplicationRecord
	enum role: [:male, :female]
end
