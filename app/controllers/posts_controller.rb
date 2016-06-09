class PostsController < ApplicationController
  def index
    if params[:category_id]
      @category=Category.find(params[:category_id])
      @posts=Post.order(date: :desc).where(category_id: @category.id).paginate(:page => params[:page])
    else
      @posts = Post.order(date: :desc).paginate(:page => params[:page])
    end
  end

  def show

  end
end
