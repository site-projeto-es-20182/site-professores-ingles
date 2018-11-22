class Poems::CommentsController < CommentsController
  before_action :set_commentable

  private
  def set_commentable
    @commentable = Poem.find(params[:poem_id])
  end
end