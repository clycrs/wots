class CommentsController < ApplicationController
 
  def create
    @comment = Comment.new(comment_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @podcast = Cast.find(params[:cast_id])
    @comment.cast = @podcast
    if @comment.save
      redirect_to podcast_path(@podcast), notice: 'Commentaire ajouté'
    else 
      render "podcast/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
