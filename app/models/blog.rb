class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged


  def self.recent_blogs
  		order('created_at desc')
  end

end
