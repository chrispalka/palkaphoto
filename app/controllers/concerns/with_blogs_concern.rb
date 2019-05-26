module WithBlogsConcern
	extend ActiveSupport::Concern

	included do
		before_action :set_sidebar_categories
	end

	def set_sidebar_categories
      @side_bar_categories = Category.with_blogs
  end
end
