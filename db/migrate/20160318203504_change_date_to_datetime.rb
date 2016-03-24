class ChangeDateToDatetime < ActiveRecord::Migration
  def up
    change_column :trackers, :timestamp, :datetime
  end

  def down
    change_column :trackers, :timestamp, :date
  end
end
