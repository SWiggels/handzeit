class AddIpToTracker < ActiveRecord::Migration
  def change
    add_column :trackers, :ip, :string
  end
end
