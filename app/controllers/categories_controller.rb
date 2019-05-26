class CategoriesController < ApplicationController
  include WithBlogsConcern
  layout 'blog'

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @blogs = @category.blogs.recent_blogs
  end

end
