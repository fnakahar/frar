class AddTimeslotColumnToEvent < ActiveRecord::Migration[5.2]
  def up
    add_column :events, :timeslot, :string
  end

  def down
    remove_column :events, :timeslot, :string
  end
end
