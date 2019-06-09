class InappropriatesController < ApplicationController
  before_action :find_post
  before_action :find_inappropriate, only: [:destroy]

  def create
  if already_inappropriated?
    flash[:notice] = "You can't inappropriate more than once"
  else
    @post.inappropriates.create(user_id: current_user.id)
  end
  redirect_to post_path(@post)
  end



 def destroy
 if !(already_inappropriated?)
   flash[:notice] = "Cannot mark this as appropriate"
 else
   @inappropriate.destroy
 end
 redirect_to post_path(@post)
 end

 private

 def find_inappropriate
  @inappropriate = @post.inappropriates.find(params[:id])
 end


 def already_inappropriated?
 Inappropriate.where(user_id: current_user.id, post_id:
 params[:post_id]).exists?
 end



 def find_post
   @post = Post.find(params[:post_id])
 end
end
