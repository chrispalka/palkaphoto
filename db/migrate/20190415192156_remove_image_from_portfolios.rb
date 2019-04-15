class RemoveImageFromPortfolios < ActiveRecord::Migration[5.2]
  def change
    remove_column :portfolios, :image, :text
  end
end
