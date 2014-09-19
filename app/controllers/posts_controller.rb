class PostsController < ApplicationController

  before_filter :require_login, except: [ :index ]

  def new
    @post = Post.new
  end

  def index
   @posts = Post.all.order("created_at DESC")
  end


  def create
    @post = Post.new(:comment => params[:comment])
    @post.user_id = current_user.id
    @post.name = current_user.name
     c = @post.name

    if @post.save
      redirect_to posts_path
      flash[:notice] = " " + @post.name + " " + " commented Successfully"
    else
      redirect_to posts_path
      flash[:notice] = "Failed to post comment!"
    end
  end

  def show
  end

  def edit

         @post = Post.find(params[:id])
         unless @post.user_id == current_user.id
          redirect_to posts_path
          flash[:notice] = "You are not a authorizable person to edit this!"
         end


    end

  def update
    @post = Post.find(params[:id])
    if @post.update(:comment => params[:comment])
      redirect_to posts_path
      flash[:notice] = "Post updated Successfully!"
    else
      redirect_to posts_path
      flash[:notice] = "Updation failed!"
    end
     end

  def destroy
    @post = Post.find(params[:id])
    if @post.user_id == current_user.id
      @post.destroy
      redirect_to posts_path
      flash[:notice] = "Post deleted Successfully!"
    else
      redirect_to posts_path
      flash[:notice] = "May be you are not a authorizable to delete this!"
    end
  end

  def comments
  end
end