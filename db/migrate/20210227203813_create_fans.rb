class CreateFans < ActiveRecord::Migration[6.0]
  def change
    create_table :fans do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.user :references

      t.timestamps
    end
  end
end
