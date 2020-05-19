class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]
  
  def new
    @post = Post.new
  end

  def create
  @post = Post.new(post_paras)
  @post.user_id = current_user.id
  @post.save
  redirect_to root_path
  end
  
  def index
    @Post = Post.all
  end

  private
  def post_paras
    params.require(:post).permit(:title,:body)
  end
end
