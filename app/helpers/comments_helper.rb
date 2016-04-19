module CommentsHelper

  def comment_author_name(comment)
    user = User.find_by(id: comment.author_id)
    user.username
  end

end
