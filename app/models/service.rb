class Service < ApplicationRecord
	enum name: [:manicure, :pedicure]
end
