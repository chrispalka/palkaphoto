class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged


  mount_uploader :image, PortfolioUploader

  validates_presence_of :title, :subtitle



  def self.by_position
  	order('position ASC')
  end

end
