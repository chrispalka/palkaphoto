class BlogsController < ApplicationController
  include WithBlogsConcern
  before_action :set_blog, only: [:show, :edit, :update, :destroy, :toggle_status]
  access all: [:index, :show], site_admin: :all
  layout "blog"
  # GET /blogs
  def index
    if logged_in?(:site_admin)
      @blogs = Blog.all.recent_blogs
    else
      @blogs = Blog.published.recent_blogs
    end
  end

  # GET /blogs/1
  def show
    if logged_in?(:site_admin) || @blog.published?
      @blog = Blog.includes(:comments).friendly.find(params[:id])
      @comment = Comment.new
      @page_title = @blog.title
      @seo_keywords = @blog.body
    else
      redirect_to palkafoodie_path, notice: "You are not authorized to access this page"
    end
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  def create
    @blog = Blog.new(blog_params)

    if @blog.save
      redirect_to blog_show_path(@blog), notice: 'Blog was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /blogs/1
  def update
    if @blog.update(blog_params)
      redirect_to blog_show_path(@blog), notice: 'Blog was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /blogs/1
  def destroy
    @blog.destroy
    redirect_to palkafoodie_path, notice: 'Blog was successfully destroyed.'
  end

  def toggle_status
    if @blog.draft?
      @blog.published!
    elsif @blog.published?
      @blog.draft!
    end
      redirect_to palkafoodie_path, notice: 'Post status has been successfully updated'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def blog_params
      params.require(:blog).permit(:title, :body, :subtitle, :category_id, :status, :blog_image)
    end
end
