class PostsController < ApplicationController
  def index
    # Use the order method to sort the posts using created_at
    # @posts = Post.all
    @posts = Post.all.order(id: :desc)
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
    # Get the data received from the form, then save it
    @post = Post.new(content: params[:content])
    @post.save
    # Use the redirect_to method to redirect to the "Posts" page
    redirect_to("/posts/index")
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    if @post.save
      redirect_to("/posts/index")
     else
      redirect_to("/posts/#{@post.id}/edit")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end
end