class DownvotesController < ApplicationController

   before_action :find_post
   before_action :find_downvote, only: [:destroy]

   def create
   if already_downvoted?
     flash[:error] = "You can't downvote more than once"
   else
     @post.downvotes.create(user_id: current_user.id)
   end
   redirect_to post_path(@post)
   end



  def destroy
  if !(already_downvoted?)
    flash[:error] = "Cannot unDownvote"
  else
    @downvote.destroy
  end
  redirect_to post_path(@post)
  end

  private

  def find_downvote
   @downvote = @post.downvotes.find(params[:id])
  end


  def already_downvoted?
  Downvote.where(user_id: current_user.id, post_id:
  params[:post_id]).exists?
  end



  def find_post
    @post = Post.find(params[:post_id])
  end
end
