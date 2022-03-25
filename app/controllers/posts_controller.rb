class PostsController < ApplicationController
  def index
    # Paste the posts array defined in the view, then rename it to @posts
    #  @posts = [
    #    "Learning Rails with Progate!",
    #    "Trying to display the posts!",
    #  ]
    
    @posts = Post.all
  end

  def show
    @id = params[:id]
    # Use find_by to get the post with params[:id] as the id, then assign it to the @post variable
    @post = Post.find_by(id: params[:id])
  end

  # Add the "new" action
  def new
  end

  def create
  end
end