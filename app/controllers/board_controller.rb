class BoardController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.photo = params[:photo]
    post.save
    
    redirect_to '/'
  end

  def show
    @post = Post.find(params[:id])
  end

  def create_reply
  end
  
end
