class UsersController < ApplicationController
	
    after_action :filters,only:[:destroy]

   def mail
   	@user = User.first
			UserMailer.welcome_email(@user).deliver_now	
	end

	def index
		@users = User.all
	end

	def show
		@users = User.all
	end

	def new
		@users = User.new
	end

	def create
		@users = User.new(strong)
		if @users.save
			redirect_to @users
		end
	end

	def edit
		@users = User.find(params[:id])
	end

	def update
		@users = User.find(params[:id])
		if @users.update(strong)
			redirect_to @users
		end
	end

	def destroy
		@users = User.find(params[:id])
		@users.destroy
		redirect_to @users
	end

	def user_update
		render json: User.second	
	end
  
  private

  # def user_param
	# 	params.require(:user).permit(:name,:email)
	# end

  def strong 
  	params.require(:user).permit(:name,:email,:password,:age,:address) 
  end

  def filters
  	@value = "hello"
  end

end