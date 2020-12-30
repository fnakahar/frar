class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name,         null: false
      t.string :product_subtitle,     null: false
      t.string :product_image,        null: false
      t.text :product_hl_description, null: false
      t.text :product_ll_description
      t.integer :product_rating
      t.text :frar_comment
      t.string :product_price,        null: false
      t.string :review_title
      t.text :review_content

      t.timestamps
    end
  end
end
