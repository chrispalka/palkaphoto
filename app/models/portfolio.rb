class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged


  def self.by_position
  	order('position ASC')
  end

end
