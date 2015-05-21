class GrumblsController < ApplicationController
  def index
    @grumbls = Grumbl.all
    render status: 200, json: @grumbls.to_json
  end

  def show
    @grumbl = Grumbl.find(params[:id])
    render status: 200, json: @grumbl.to_json
  end

  def create
    @grumbl = Grumbl.new(grumbl_params)
    if @grumbl.save
      render json: @grumbl.to_json, status: 200
    end
  end

  def update
    @grumbl = Grumbl.find(params[:id])
    if @grumbl.update(grumbl_params)
      render json: @grumbl.to_json, status: 200
    end
  end

  def destroy
    @grumbl = Grumbl.find(params[:id])
    if @grumbl.destroy
      render json: @grumbl.to_json, status: 200
    end
  end

  private
  def grumbl_params
    params.require(:grumbl).permit(:body, :author)
  end
end
