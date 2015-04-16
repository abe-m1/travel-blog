class CommentsController < ApplicationController

  def create
      @blog = Blog.find(params[:id])
        @comment = @blog.comments.new(params.require(:comment).permit(:name, :date, :body))
        @comment.save
        redirect_to blog_path(@blog)
  end
end
