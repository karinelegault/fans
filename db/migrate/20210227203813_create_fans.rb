class CreateFans < ActiveRecord::Migration[6.0]
  def change
    create_table :fans do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
