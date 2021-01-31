class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.integer :product_id
      t.integer :customer_id
      t.string :consultant
      t.string :request

      t.timestamps
    end
  end
end
