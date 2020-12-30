class AddColumnProductCategory < ActiveRecord::Migration[5.2]
  def up
    add_column :products, :product_category, :string
  end

  def down
    remove_column :products, :product_category, :string
  end
end
