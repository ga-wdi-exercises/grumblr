class PostsController < ApplicationController
  def index
    @posts = Post.all
    render status: 200, json: @posts.to_json
  end

  def show
    @post = Post.find(params[:id])
    render status: 200, json: @post.to_json
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post.to_json, status: 200
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      render json: @post.to_json, status: 200
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      render json: @post.to_json, status: 200
    end
  end

  private
  def post_params
    params.require(:song).permit(:title, :audio_url, :album_art, :artist, :genre)
  end
end
