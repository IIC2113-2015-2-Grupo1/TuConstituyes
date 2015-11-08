class AddDefaultValueToStarredAttribute < ActiveRecord::Migration
  def up
  change_column :comments, :starred, :boolean, :default => false
  end

  def down
    change_column :comments, :starred, :boolean, :default => nil
  end
end
