class ApplicationController < ActionController::Base
  layout proc { false if request.xhr? }
  include DefaultPageContent
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
end
