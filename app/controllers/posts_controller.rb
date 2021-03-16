class PostsController < ApplicationController

  def index
    @posts = Post.order("id DESC")
  end

  #def new
    #@post = Post.new
  #end

  def create
    tekitou = Post.create(post_params)
    render json:{ post: tekitou }
  end
  
  private
  def post_params
    params.permit(:content)
  end
end
