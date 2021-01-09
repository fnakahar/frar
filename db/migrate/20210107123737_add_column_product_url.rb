class AddColumnProductUrl < ActiveRecord::Migration[5.2]
  def up
    add_column :products, :product_url, :string
  end

  def down
    remove_column :products, :product_url, :string
  end
end
