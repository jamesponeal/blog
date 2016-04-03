class PostsController < ApplicationController

  def new

  end


  def create

  end


  def index

  end


  def show
    @post = Post.find_by(id: params[:id])
    if @post
      render "show"
    else
      flash[:notice] = "Sorry, this post was not found!"
      redirect_to root_path
    end
  end


  def author_index
    @posts = Post.where(author_id: params[:user_id])
    if @posts
      render :index
    end
  end


  def edit

  end


  def update

  end




end
