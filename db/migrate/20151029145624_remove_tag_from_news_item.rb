class RemoveTagFromNewsItem < ActiveRecord::Migration
  def change
    remove_column :news_items, :tag_id
  end
end
