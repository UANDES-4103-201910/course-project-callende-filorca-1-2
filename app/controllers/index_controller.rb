class IndexController < ApplicationController
  def home_page
    @posts = Post.order(created_at: :desc)
  end

end
