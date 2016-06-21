class PostsController < ApplicationController

  def new
    @post = Post.new
  end


  def create
    author = User.find_by(id: session[:user_id])
    @post = author.posts.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      flash[:errors] = @post.errors.full_messages
      render :new
    end
  end


  def index
    @posts = Post.all.order("created_at")
    if @posts
      render :index
    end
  end


  def show
    @post = Post.find_by(id: params[:id])
    @comments = Comment.where(post_id: @post.id)
    if @post
      render :show
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
    @post = Post.find_by(id: params[:id])
  end


  def update
    @post = Post.find_by(id: params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      flash[:errors] = @post.errors.full_messages
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :author_id)
  end



end
