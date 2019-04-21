module ApplicationHelper

  def login_helper style = ''
		if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      "<br>".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    else
    	(link_to "Logout", destroy_user_session_path, method: :delete, class: style) +
      "<br>".html_safe +
      (link_to "My Account", edit_user_registration_path, class: style) +
      "<br>".html_safe +
      (link_to "New", new_portfolio_path, class: style)

    end
	end

  def nav_items
  [
    {
      url: root_path,
      title: 'Home'
    }
  ]
end

def nav_helper style, tag_type
  nav_links = ''

  nav_items.each do |item|
    nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style}'>#{item[:title]}</a></#{tag_type}>"
  end

  nav_links.html_safe
end


  def copyright_generator
     PalkaphotoViewTool::Renderer.copyright 'Chris Palka', 'All rights reserved'
  end

  def source_helper
		if session[:source]
			greeting = "Thanks for visiting me from #{session[:source]}"
      # content_tag(:p, greeting, class: "source-greeting")
    end
	end
end

def image_generator(height:, width:)
  "http://placehold.it/#{height}x#{width}"
end

def portfolio_img img
  if img.model.thumb?
    img
  else
    image_generator(height: '350', width: '200')
  end
end

def pagination_options
  @pagination_options = {
                        :per_page => 6,
                        :current_page => 0,
                        :url => '/portfolios/get_photos',
                        :total => 3, :template => 'templates/photos'}

end
