class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]
  
  def new
    @post = Post.new
  end

  def create
  @post = Post.new(post_paras)
  @post.user = current_user
  @post.save
  redirect_to root_path
  end
  
  def index
    @posts = Post.all
  end

  def destroy
    puts 'This is the destroy!!!!!!!!'
  end

  private
  def post_paras
    params.require(:post).permit(:title,:body)
  end

  def signed_in_user
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
