class CreateInvestors < ActiveRecord::Migration[5.0]
  def change
    create_table :investors do |t|
      t.string :first_name
      t.string :last_name
      t.string :fund_name
      t.date :last_update

      t.timestamps
    end
  end
end
