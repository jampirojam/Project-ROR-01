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
    # Declare @post variable, and assign it the new instance of Post created using the "new" method
    @post = Post.new
  end

  def create
    @post = Post.new(content: params[:content])
    # Redirect to the "Posts" page if the @post is valid, and render the "New post" page if it's invalid
    if @post.save
      flash[:notice] = "Post successfully created"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "Post successfully edited"
      redirect_to("/posts/index")
     else
      # redirect_to("/posts/#{@post.id}/edit")
      render("posts/edit")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "Post successfully deleted"
    redirect_to("/posts/index")
  end
end