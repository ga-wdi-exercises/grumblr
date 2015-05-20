class GrumblersController < ApplicationController
  def index
    @grumblers = Grumbler.all
    render status: 200, json: @grumblers.to_json
  end

  def show
    @grumbler = Grumbler.find(params[:id])
    render status: 200, json: @grumbler.to_json
  end

  def new
    @grumbler = Grumbler.new
  end

  def create
    @grumbler = Grumbler.new(grumbler_params)
    if @grumbler.save
      render json: @grumbler.to_json, status: 200
    end
  end

  def update
    @grumbler = Grumbler.find(params[:id])
    if @grumbler.update(grumbler_params)
      render json: @grumbler.to_json, status: 200
    end
  end

  def destroy
    @grumbler = Grumbler.find(params[:id])
    if @grumbler.destroy
      render json: @grumbler.to_json, status: 200
    end
  end

  private
    def grumbler_params
      params.require(:grumbler).permit(:body, :author)
    end
end