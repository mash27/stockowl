class AddDescriptionToInvestors < ActiveRecord::Migration[5.0]
  def change
    add_column :investors, :description, :text
  end
end
