class AddTimestampToTracker < ActiveRecord::Migration
  def change
    add_column :trackers, :timestamp, :date
  end
end
