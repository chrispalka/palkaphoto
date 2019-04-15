class RemoveThumbFromPortfolios < ActiveRecord::Migration[5.2]
  def change
    remove_column :portfolios, :thumb, :string
  end
end
