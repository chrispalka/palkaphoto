class AddColumnToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :subtitle, :text
  end
end
