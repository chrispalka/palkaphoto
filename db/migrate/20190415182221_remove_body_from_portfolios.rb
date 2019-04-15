class RemoveBodyFromPortfolios < ActiveRecord::Migration[5.2]
  def change
    remove_column :portfolios, :body, :text
  end
end
