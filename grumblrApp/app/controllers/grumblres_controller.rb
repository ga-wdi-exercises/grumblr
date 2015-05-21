class GrumblresController < ApplicationController

  def index
    @grumblrs = Grumblr.all
    render status: 200, json: @grumblrs.to_json
  end

  def show
    @grumblr = Grumblr.find(params[:id])
    render status: 200, json: @grumblr.to_json
  end

  # def create
  #   @grumblr = Song.new(song_params)
  #   if @grumblr.save
  #     render json: @grumblr.to_json, status: 200
  #   end
  # end
  #
  # def update
  #   @grumblr = Song.find(params[:id])
  #   if @grumblr.update(song_params)
  #     render json: @grumblr.to_json, status: 200
  #   end
  # end
  #
  # def destroy
  #   @grumblr = Song.find(params[:id])
  #   if @grumblr.destroy
  #     render json: @grumblr.to_json, status: 200
  #   end
  # end
  #
  # private
  # def song_params
  #   params.require(:song).permit(:title, :audio_url, :album_art, :artist, :genre)
  # end
end
