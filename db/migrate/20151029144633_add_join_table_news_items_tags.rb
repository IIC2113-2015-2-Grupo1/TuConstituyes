class AddJoinTableNewsItemsTags < ActiveRecord::Migration
  def change
    create_table :news_items_tags do |t|
      t.belongs_to :news_item, index: true
      t.belongs_to :tag, index: true
    end
  end
end
