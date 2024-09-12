class Api::UsersController < ApplicationController

	def user_update
		render json: User.all
	end
end