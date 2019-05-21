module CurrentUserConcern
	extend ActiveSupport::Concern

	included do
		before_action :store_current_location, :unless => :devise_controller?
	end

 	def current_user
 		super || guest_user
 	end

  def guest_user
 		guest = GuestUser.new
 		guest.name = "Guest User"
 		guest.first_name = "Guest"
 		guest.last_name = "User"
 		guest.email = "guest@example.com"
 		guest
 	end

 	private

 	def store_current_location
 		store_location_for(:user, request.url)
	end

	def after_sign_out_path_for(resource)
		request.referrer || root_path
	end

end
