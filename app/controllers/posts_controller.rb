class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    @post = Post.new(article_params)

    @post.save
    redirect_to @post
  end


  private
    def article_params
      params.require(:post).permit(:title, :text)
    end

    def authorize_user
      if !user_signed_in? || !current_user.admin?
        raise ActionController::RoutingError.new ("Not Found")
      end
    end
end
