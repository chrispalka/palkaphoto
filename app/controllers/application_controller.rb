class ApplicationController < ActionController::Base
  include DefaultPageContent
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
end
