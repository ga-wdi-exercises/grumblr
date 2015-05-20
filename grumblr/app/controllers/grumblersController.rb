class GrumblersController < ApplicationController
	def index
		@grumblers = GrumblerModel.all
		render json: @grumblers.to_json
	end

	def show
		@grumbler = GrumblerModel.find(params[:id])
		render json: @grumbler.to_json
	end

	def new
		@grumbler = Grumbler.new
	end

	def create
		@grumbler = GrumblerModel.new(grumbler_params)
		if @grumbler.save
			render json: @grumbler.to_json
		end

	def update
		@grumbler = GrumblerModel.find(params[:id])
		if @grumbler.update(grumbler_params)
			render json: @grumbler.to_json
		end
	end

	def destroy
		@grumbler = GrumblerModel.find(params[:id])
		if @grumbler.destroy
			render json: @grumbler.to_json
		end
	end

	private
		def grumbler_params
			params.require(:grumbler).permit(:body, :author)
		end
end