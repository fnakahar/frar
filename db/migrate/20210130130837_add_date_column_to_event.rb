class AddDateColumnToEvent < ActiveRecord::Migration[5.2]
  def up
    add_column :events, :date, :date
  end

  def down
    remove_column :events, :date, :date
  end
end
