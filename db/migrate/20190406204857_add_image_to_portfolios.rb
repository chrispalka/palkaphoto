class AddImageToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :image, :text
  end
end
