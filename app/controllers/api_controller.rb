class ApiController < ApplicationController

	private
	def authenticated?
		authenticate_or_request_with_http_basic do |email, password|
			user = User.find_by(email: email)
			user.authenticate(password) if user.present?
		end
	end

end