class DetailsController < ApplicationController
  
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy] 
  
 
	def index
		@detail = Detail.all
		render json: { data: @detail } 
	end

	def create
  	@detail = Detail.new(strong)
		if @detail.save
			render json: @detail
		end

	end

	def show
		@detail = Detail.find(params[:id])
		render json: @detail
	end

	def update
		@detail = Detail.find(params[:id])
		if @detail.update(strong)
			render json: @detail
		end
	end

	def destroy
		@detail = Detail.destroy(params[:id])
		if @detail.destroy
			render json: @detail 
		end
	end

	private
	def strong
		params.permit(:name, :age, :address)
	end


end
		