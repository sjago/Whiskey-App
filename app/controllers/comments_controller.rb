class CommentsController < ApplicationController

 def create

    @whiskey = Whiskey.find(params[:whiskey_id])
    attrs = params.require(:comment).permit(:content).merge(whiskey_id: @whiskey.id)
    @comment = Comment.new(attrs)
    redirect_to whiskey_path(@whiskey)
  end




end