class PostsController < ApplicationController
  def index
    # Paste the posts array defined in the view, then rename it to @posts
    #  @posts = [
    #    "Learning Rails with Progate!",
    #    "Trying to display the posts!",
    #  ]
    
    @posts = Post.all
  end
end