class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])
    flash[:alert] = 'Falha ao salvar comentário!' unless @comment.save

    respond_to do |format|
      format.html { redirect_to @post }
      format.js
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to @post }
      format.xml  { head :ok }
    end
  end
end