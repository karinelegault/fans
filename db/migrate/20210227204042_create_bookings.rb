class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :dates
      t.string :status
      t.fan :references
      t.user :references

      t.timestamps
    end
  end
end
