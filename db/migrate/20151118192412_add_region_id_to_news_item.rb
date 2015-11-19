class AddRegionIdToNewsItem < ActiveRecord::Migration
  def change
    add_column :news_items, :region_id, :integer
  end
end
