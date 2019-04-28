class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged


  mount_uploader :image, PortfolioUploader


  def self.by_position
  	order('position ASC')
  end

end
