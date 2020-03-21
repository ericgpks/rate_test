class PostsController < ApplicationController
  
  def index
    @posts = Post.includes(:m_category).order(created_at: :desc)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

end