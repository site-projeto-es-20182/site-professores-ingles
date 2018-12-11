class Forums::CommentsController < CommentsController
  before_action :set_commentable

  private
  def set_commentable
    @commentable = Forum.find(params[:forum_id])
  end
end