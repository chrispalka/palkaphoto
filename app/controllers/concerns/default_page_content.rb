module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end


  def set_page_defaults
    @page_title = "PalkaPhoto"
    @seo_keywords = "Chris Palka portfolio photo blog PalkaPhoto"
  end
end
