class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string    :name,                  null: false
      t.string    :email,                 null: false, unique: true
      t.integer   :chat_id
      t.string    :recommend
      t.integer   :inquiry_id
      t.integer   :event_id
      t.string    :age_range,             null: false
      t.string    :gender,                null: false
      t.integer   :purchase_history_id
      t.string    :password_digest

      t.timestamps
    end
  end
end
