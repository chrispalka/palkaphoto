module BlogsHelper
  def blog_status_color blog
    if blog.draft?
		'color: red;'
    elsif blog.published?
    'color: green;'
    end
	end
end
