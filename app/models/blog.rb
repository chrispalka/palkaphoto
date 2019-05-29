class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  mount_uploader :blog_image, BlogUploader

  validates_presence_of :title, :body, :subtitle, :category_id

  belongs_to :category, optional: true

  has_many :comments, dependent: :destroy

  def self.recent_blogs
  		order('created_at desc')
  end

end
