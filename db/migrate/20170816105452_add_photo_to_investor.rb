class AddPhotoToInvestor < ActiveRecord::Migration[5.0]
  def change
    add_column :investors, :photo, :string
  end
end
