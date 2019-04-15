class AddThumbColumnToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :thumb, :text
  end
end
