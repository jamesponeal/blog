class CommentsController < ApplicationController

  def new
    @post = Post.find_by(id: params[:post_id])
    @comment = Comment.new
  end

  def create
    post = Post.find_by(id: params[:post_id])
    @comment = post.comments.new(comment_params)
    current_user.comments << @comment
    if @comment.save
      redirect_to post_path(post)
    else
      flash[:errors] = @comment.errors.full_messages
      render :new
    end
  end

  def edit

  end

  def update

  end


  private

  def comment_params
    params.require(:comment).permit(:content, :author_id, :post_id)
  end


end
