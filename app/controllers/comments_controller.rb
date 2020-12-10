class CommentsController < ApplicationController
 
  def create
    @comment = Comment.new(comment_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @cast = Cast.find(params[:cast_id])
    @comment.cast = @cast
    @comment.user = current_user
    if @cast.format == "podcast" 
      redirection_path = podcast_path(@cast) 
      rendered_view = "podcasts/show"
    else 
      redirection_path = minicast_path(@cast)
      rendered_view = "minicasts/show"
    end    
         
    if @comment.save
      redirect_to redirection_path, notice: 'Commentaire ajouté'
    else 
      render rendered_view
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
