class PostsController < ApplicationController
  
  def index
    @posts = Post.includes(:m_category).order(created_at: :desc)
  end

  def new
    @post = Post.new
    @categories = MCategory.all.order(id: :asc)
  end

  def create
    post = Post.create(create_post_data)
    redirect_to posts_path
  end

  def edit
  end

  def update
  end

  private

  def create_post_data
    params.require(:post).permit(:title, :m_category_id, :content)
  end
end