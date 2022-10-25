class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    @prototype = @comment.prototype
    @comments = @prototype.comments.includes(:user)
    if @comment.save
      redirect_to "/prototypes/#{@comment.prototype.id}"
    else
      render '/prototypes/show'
    end    
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user: current_user.id, prototype: params[:prototype_id])
  end
end