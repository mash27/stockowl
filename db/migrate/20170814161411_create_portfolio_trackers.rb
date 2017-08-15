class CreatePortfolioTrackers < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolio_trackers do |t|
      t.string :ticker
      t.string :company_name
      t.integer :d_current_price
      t.integer :d_change
      t.integer :p_change
      t.integer :shares_held
      t.integer :market_value
      t.integer :p_weight
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
