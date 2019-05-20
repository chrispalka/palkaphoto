class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  def self.recent_blogs
  		order('created_at desc')
  end

end
