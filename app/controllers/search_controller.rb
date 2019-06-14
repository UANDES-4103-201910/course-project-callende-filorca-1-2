class SearchController < ApplicationController
  def index
      @search = params[:search]

      @posts = Post.where(["title LIKE ?","%#{params[:search]}%"])
      @postsDescription = Post.where(["description LIKE ?","%#{params[:search]}%"])
      @postsAuthor = User.select("*").joins("INNER JOIN posts ON posts.user_id = users.id").where(["name LIKE ?","%#{params[:search]}%"])
      @usersN = User.where(["name LIKE ?","%#{params[:search]}%"])
      @usersLN = User.where(["lastname LIKE ?","%#{params[:search]}%"])
      @usersL = User.where(["location LIKE ?","%#{params[:search]}%"])

      @contadorPost = @posts.count
      @contadorPostA = @postsAuthor.count
      @contadorUserName = @usersN.count
      @contadorUserLastName = @usersLN.count
      @contadorUserLocation = @usersL.count
      @contadorDescription = @postsDescription.count
  end
end
