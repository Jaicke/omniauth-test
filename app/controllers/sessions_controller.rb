class SessionsController < ApplicationController

	def create
		user = AuthService.authenticate!(request.env['omniauth.auth'])
		render json: { user: user }, status: :created
	end
end
