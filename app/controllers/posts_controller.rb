class PostsController < ApplicationController

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
end
