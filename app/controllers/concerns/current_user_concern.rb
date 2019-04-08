module CurrentUserConcern
	extend ActiveSupport::Concern

	included do
		before_action :store_current_location, :unless => :devise_controller?
	end

 	def current_user
 		super || guest_user
 	end

 	def guest_user
    OpenStruct.new(name: "Guest User",
                  first_name: "Guest",
                  last_name: "User",
                  email: "guest@example.com"
                  )
 	end

 	private

 	def store_current_location
 		store_location_for(:user, request.url)
	end

	def after_sign_out_path_for(resource)
		request.referrer || root_path
	end

end
