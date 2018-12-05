class Texts::CommentsController < CommentsController
  before_action :set_commentable

  private
  def set_commentable
    @commentable = Text.find(params[:text_id])
  end
end