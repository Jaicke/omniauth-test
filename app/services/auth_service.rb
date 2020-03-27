class AuthService
	def initialize(params)
		@params = params
	end

	def authenticate!
		user = social_login!
	end

	def self.authenticate!(params)
		self.new(params).authenticate!
	end

	def social_login!
		user = User.find_or_initialize_by(email: @params.info.email.downcase) do |user|
			user.name = user.name || @params.info.name
			user.photo_url = user.photo_url || @params.info.image
			user.password = SecureRandom.hex if user.password.blank?
			user.save!

			user
		end

		user
	end

end