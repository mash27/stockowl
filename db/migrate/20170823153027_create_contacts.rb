class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :message
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
