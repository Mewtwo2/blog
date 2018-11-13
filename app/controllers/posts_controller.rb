class PostsController < ApplicationController
  def new
    redirect_to root_path if current_user && !current_user.is_admin
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title,:content)
  end
end
