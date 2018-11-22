class CommentsController <ApplicationController

  def new
    @comment = @commentable.comments.new
  end

  def create
    @comment = @commentable.comments.new comment_params
    if @commentable.save
      @commentable.save
      redirect_to @commentable, notice: "Comment succesfully created."
    else
      redirect_to @commentable, notice: "Comment not created"
    end
  end

  def destroy
    @comment = @commentable.comments.find(params[:id])
    @comment.destroy
    redirect_to @commentable, notice: "Comment succesfully deleted"
  end

  private
    def comment_params
      params.require(:comment).permit(:author, :content)
    end
end